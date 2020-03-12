pkgname=nm-eduroam-ufrgs
pkgver=20200312
pkgrel=2
pkgdesc='NetworkManager pre-installed eduroam connection with ufrgs.br domain.'
arch=('any')
license=('CC')
url='https://www1.ufrgs.br/catalogoti/servicos/servico?servico=48'
depends=('networkmanager')
source=('eduroam' 'cert_ufrgs.pem')
sha256sums=('9ad9fe2266d679facc2505c38ad4ab30d3a1386080ad4cce8a40ec6b68ed1600'
	'adef6a0c706d3d3d317e997a1bd1bccc43435bc89dc1f912dcefab0bdf232d8a')
install="nm-reload.install"

package() {
	cd "$srcdir"
	install -Dm644 'cert_ufrgs.pem' "$pkgdir/etc/ca-certificates/trust-source/anchors/ufrgs.crt"
	install -Dm600 'eduroam.profile' "$pkgdir/etc/NetworkManager/system-connections/eduroam"
	chmod 700 "$pkgdir/etc/NetworkManager/system-connections"
}
