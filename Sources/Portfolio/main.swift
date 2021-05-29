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
    var url = URL(string: "https://antonmartinsson.netlify.app")!
    var name = "Anton Martinsson"
    var description = "A description of this website"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

private struct PortfolioHTMLFactory<Site: Website>: HTMLFactory {
	
	func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
		HTML(
			.head(
				.meta(.charset(.utf8)),
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
							Project(projectInfo: Projects.platNiklas, iconAlignment: .left)
							Project(projectInfo: Projects.martinssonPhotography, iconAlignment: .right)
							Project(projectInfo: Projects.tweetToBeat, iconAlignment: .left)
//							Span("Show 2 more projects").id("showMoreButton")
//							Div {
//								Div {
//									Project(projectInfo: Projects.missionEmission, iconAlignment: .left)
//									Project(projectInfo: Projects.pokefy, iconAlignment: .left)
//								}
//								.class("expandContract")
//							}
						}
						.class("projectContainer")
					}
					.class("container")
					
					Div {
						SectionLabel(label: "Contact").style("padding-right: 60px; margin-top: 30px;")
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
