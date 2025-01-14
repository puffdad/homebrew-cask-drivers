cask "yubico-yubikey-personalization-gui" do
  version "3.1.25"
  sha256 "45b270edd68c03e6470fe1bcb8dee79dad37c454b1e679838233041feb7ad23d"

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  name "YubiKey Personalization GUI"
  desc "YubiKey tool"
  homepage "https://www.yubico.com/products/services-software/personalization-tools/use/"

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall quit:    "com.yubico.YKPersonalization",
            pkgutil: "com.yubico.YKPersonalization"

  zap trash: [
    "~/Library/Application Scripts/com.yubico.YKPersonalization",
    "~/Library/Containers/com.yubico.YKPersonalization",
  ]

  # "This project is no longer under active development. Use YubiKey Manager
  # to configure a YubiKey device."
  caveats do
    discontinued
  end
end
