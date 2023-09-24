import Foundation
import Plot

struct Work: Component {
	var body: Component {
		VStack {
			HStack {
                Badge(workplace: SveaSolar())
                Badge(workplace: WarOnCancer())
			}
			.class("badgeContainer")

			HStack {
                Badge(workplace: TeamEngine())
				Badge(workplace: Spotify())
				Badge(workplace: Ericsson())
			}
			.class("badgeContainer")
		}
		.id("workContainer")
	}
    
    struct Badge: Component {
        let workplace: WorkPlaceBasics
        
        var body: Component {
            Div {
                Div()
                    .class("companyLogo")
                    .id(workplace.logoId)
                Div {
                    Paragraph(workplace.title)
                        .id("jobTitle")
                    Paragraph(workplace.description)
                        .class("workParagraph")
                }
                .class("workDescription")
            }
            .class("badge")
            .id(workplace.id)
        }
    }
}
