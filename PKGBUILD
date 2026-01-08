# Maintainer: Nsomnia <nsomnia@example.com>
# "I use Arch, BTW" - Tier: Over 9000
pkgname=vacuumtube-launchers
pkgver=1.0.0
pkgrel=1
pkgdesc="Elite desktop launchers for the Vacuumtube YouTube client (Youtube, Tube, Vacuumtube)"
arch=('any')
url="https://github.com/Nsomnia/vacuumtube-launchers"
license=('MIT')
depends=('electron' 'vacuumtube') # Assuming vacuumtube package provides /usr/share/vacuumtube/app.asar
source=('startvacuumtube'
        'vacuumtube.desktop'
        'youtube.desktop'
        'tube.desktop'
        'vacuumtube.svg')
sha256sums=('SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP')

package() {
    # Install the wrapper script
    install -Dm755 "${srcdir}/startvacuumtube" "${pkgdir}/usr/bin/startvacuumtube"

    # Install the desktop files
    install -Dm644 "${srcdir}/vacuumtube.desktop" "${pkgdir}/usr/share/applications/vacuumtube.desktop"
    install -Dm644 "${srcdir}/youtube.desktop" "${pkgdir}/usr/share/applications/youtube.desktop"
    install -Dm644 "${srcdir}/tube.desktop" "${pkgdir}/usr/share/applications/tube.desktop"

    # Install the elite icon
    install -Dm644 "${srcdir}/vacuumtube.svg" "${pkgdir}/usr/share/icons/hicolor/scalable/apps/vacuumtube.svg"
}
