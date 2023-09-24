import Foundation

protocol WorkPlaceBasics {
    var id: String { get }
    var title: String { get }
    var logoId: String { get }
    var description: String { get }
}

struct SveaSolar: WorkPlaceBasics {
    let id: String = "sveaSolar"
    let title: String = "Senior Software Developer"
    let logoId: String = "sveaSolarLogo"
    let description: String = "As Svea Solar began their transition from React Native to a more performant native app, my experience building apps with SwiftUI proved to be just what they were looking for. Here, I mentor less experienced Swift developers as I continue my stride for perfection of my own craft."
}

struct WarOnCancer: WorkPlaceBasics {
    let id: String = "warOnCancer"
    let title: String = "iOS Engineer"
    let logoId: String = "warOnCancerLogo"
    let description: String = "At War on Cancer, I work with in a team dedicated to creating the best possible platform for improving mental health for people going through a cancer diagnosis, toiling away with some of the latest and greatest that development on Apple platforms has to offer."
}

struct TeamEngine: WorkPlaceBasics {
    let id: String = "teamEngine"
    let title: String = "iOS Developer"
    let logoId: String = "teamEngineLogo"
    let description: String = "As the sole full time iOS Developer for the Stockholm native TeamEngine, I took their iOS offering to new highs and modernized multiple aspects of their app while the company was expanding its reach both in terms of users and employees."
}

struct Spotify: WorkPlaceBasics {
    let id: String = "spotify"
    let title: String = "Front-End Intern"
    let logoId: String = "spotifyLogo"
    let description: String = "At Spotify, I worked as a front-end developer intern in a team responsible for creating the tools used for programming and content management in the Spotify application, mainly utlizing React and Typescript to create said tools."
}

struct Ericsson: WorkPlaceBasics {
    let id: String = "ericsson"
    let title: String = "UX / UI Intern"
    let logoId: String = "ericssonLogo"
    let description: String = "My internship at Ericsson revolved around user testing of their new intranet, but I also took my own initiatives and created a clickable prototype of the website for testing purposes, as well as some vector art for some internal online workspaces."
}
