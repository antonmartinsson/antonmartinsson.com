import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Portfolio: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case photos
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://antonmartinsson.com")!
    var name = "Anton Martinsson"
    var description = "Anton's portfolio"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

private struct PortfolioHTMLFactory<Site: Website>: HTMLFactory {
	
	func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
		HTML(
			.head(
				.meta(.charset(.utf8)),
				.meta(.name("viewport"), .content("width=device-width, initial-scale=1")),
				.link(.rel(.shortcutIcon), .type("image/png"), .href("shortcutIcon.png")),
				.title("Anton's Portfolio"),
				.stylesheet("styles.css"),
				.stylesheet("photogrid.css"),
				.stylesheet("hero.css"),
				.stylesheet("work.css"),
				.stylesheet("contact.css"),
				.stylesheet("projects.css"),
				.stylesheet("darkmode.css")
			),
			.body {
				Div {
					Hero()
					
					Div {
						SectionLabel(label: "Cameras")
						HStack {
							PhotoColumn(imagePaths: PhotoColumns.first, indexOrderString: "first")
							PhotoColumn(imagePaths: PhotoColumns.second, indexOrderString: "second")
							PhotoColumn(imagePaths: PhotoColumns.third, indexOrderString: "third")
							PhotoColumn(imagePaths: PhotoColumns.fourth, indexOrderString: "fourth")
							PhotoColumn(imagePaths: PhotoColumns.fifth, indexOrderString: "fifth")
						}
						.class("camerasContainer")
					}
					.class("container")
					
					Div {
						SectionLabel(label: "Work")
						Work()
					}
					.class("container")
					
					Div {
						SectionLabel(label: "Code")
						Div {
							Project(projectInfo: Projects.gaugeKit, iconAlignment: .left)
							Project(projectInfo: Projects.cryptoverview, iconAlignment: .right)
							Project(projectInfo: Projects.martinssonPhotography, iconAlignment: .left)
							Project(projectInfo: Projects.platNiklas, iconAlignment: .right)
						}
						.class("projectContainer")
					}
					.class("container")
					
					Div {
						SectionLabel(label: "Contact").id("contactSectionLabel")
						Contact()
					}
					.class("container")
				}
			}
		)
	}
	
	func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
		try makeIndexHTML(for: context.index, context: context)
	}
	
	func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML {
		try makeIndexHTML(for: context.index, context: context)
	}
	
	func makePageHTML(for page: Page, context: PublishingContext<Site>) throws -> HTML {
		try makeIndexHTML(for: context.index, context: context)
	}
	
	func makeTagListHTML(for page: TagListPage, context: PublishingContext<Site>) throws -> HTML? {
		nil
	}
	
	func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? {
		nil
	}
}

extension Theme {
	static var portfolioTheme: Theme {
		Theme(htmlFactory: PortfolioHTMLFactory(), resourcePaths: ["Resources/portfolioTheme/styles.css",
																   "Resources/portfolioTheme/photogrid.css",
																   "Resources/portfolioTheme/hero.css",
																   "Resources/portfolioTheme/work.css",
																   "Resources/portfolioTheme/contact.css",
																   "Resources/portfolioTheme/projects.css",
																   "Resources/portfolioTheme/darkmode.css"])
	}
}

// This will generate your website using the built-in Foundation theme:
try Portfolio().publish(withTheme: .portfolioTheme)
