import SwiftUI

public enum DesignSystem {
    public enum Colors {}
    public enum PrimaryFont {}
    public enum Measurements {}
}

// MARK: - Colors

extension DesignSystem.Colors {
    public enum System {
        public static let fill = Color("Fill", bundle: .module)
        public static let background = Color("Background", bundle: .module)
        public static let label = Color("Label", bundle: .module)
    }

    public enum SystemTints {
        public static let blue = Color("Blue", bundle: .module)
        public static let green = Color("Green", bundle: .module)
        public static let indigo = Color("Indigo", bundle: .module)
        public static let orange = Color("Orange", bundle: .module)
        public static let pink = Color("Pink", bundle: .module)
        public static let purple = Color("Purple", bundle: .module)
        public static let red = Color("Red", bundle: .module)
        public static let yellow = Color("Yellow", bundle: .module)
    }
}

// MARK: - Fonts

extension Font {
    static func registerCustomFonts() {
        guard let url = Bundle.module.url(forResource: "JetBrainsMono-Regular", withExtension: "ttf"),
              let fontData = try? Data(contentsOf: url),
              let provider = CGDataProvider(data: fontData as CFData),
              let font = CGFont(provider) else { return }

        CTFontManagerRegisterGraphicsFont(font, nil)
    }
}

extension DesignSystem.PrimaryFont {
    public static let smRegular = Font.custom("JetBrainsMono-Regular", size: 19)
    public static let smBold = Font.custom("JetBrainsMono-Bold", size: 19)

    public static let mdRegular = Font.custom("JetBrainsMono-Regular", size: 21)
    public static let mdBold = Font.custom("JetBrainsMono-Bold", size: 22)

    public static let lgRegular = Font.custom("JetBrainsMono-Regular", size: 22)
    public static let lgBold = Font.custom("JetBrainsMono-Bold", size: 22)
}

// MARK: - Measurements

extension DesignSystem.Measurements {
    public enum CornerRadius {
        public static let sm: CGFloat = 4.0
        public static let md: CGFloat = 8.0
        public static let lg: CGFloat = 16.0
    }

    public enum Spacing {
        public static let sm: CGFloat = 8.0
        public static let md: CGFloat = 16.0
        public static let lg: CGFloat = 24.0
    }
}
