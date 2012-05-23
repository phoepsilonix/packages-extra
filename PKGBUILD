# Based on the file created for Arch Linux by:
# Xiao-Long Chen <chenxiaolong@cxl.epac.to>
# M0Rf30 morf3089 at gmail dot com

# Maintainer: Guinux <nuxgui@gmail.com>

pkgname=lightdm-unity-greeter
pkgver=0.2.8
pkgrel=2
pkgdesc="The greeter (login screen) application for Unity. It is implemented as a LightDM greeter."
arch=('i686' 'x86_64')
url="https://launchpad.net/unity-greeter"
license=('GPL3' 'LGPL3')
depends=('gnome-doc-utils' 'lightdm' 'gnome-common' 'libindicator')
makedepends=('gnome-settings-daemon' 'pkg-config' 'vala>=0.16.0' 'autoconf')
options=('!libtool')
install=unity-greeter.install
source=("https://launchpad.net/unity-greeter/0.2/$pkgver/+download/unity-greeter-$pkgver.tar.gz"
		manjaro-theming.patch
		translation.patch
		cof.png
		logo.png
		manjaro_badge.png
		xfce_badge.png)
sha256sums=('095dcb378d85d5b61b2819569097fee8d69cf4a0786fc8f5b18bd2cc6b27eb96'
            'aad906a3191041a83fe7e9b0a662770c04991da86b6e78213081b1bc8cde717c'
            'd518ee58fdc37a191ace6684a55f026af76ff2c7b48529d662176ae9064e8ca7'
            'bdf2eaff456d188b5ebade2905109421255c5b17404d5d3f89162c5d4b9b67b2'
            'c4e00a519da4eb8cb0c411927b0224cbbcdee40c6d5ee846882856c4b662f1f7'
            'd347590dbf9ae95dfd114d4868a352c8c428e5694118701e9daf92fe5a4ca3b8'
            '4832c1a09dda9e888400433edf7156204ef85e74aedddd0304ef62f5377c44c3')
            
build() {
  cd "${srcdir}/unity-greeter-${pkgver}"

  # Apply Manjaro theming patch
  patch -Np1 -i "${srcdir}/manjaro-theming.patch"
  
  # Apply translation patch
  patch -Np1 -i "${srcdir}/translation.patch"

  # Link against libm and libx11
  CFLAGS="${CFLAGS} -lm -lX11"

  autoreconf -vfi

  ./configure \
    --prefix=/usr \
    --sysconfdir=/etc \
    --libexecdir=/usr/lib/lightdm

   make ${MAKEFLAGS}
}

package() {
  cd "${srcdir}/unity-greeter-${pkgver}"

  make DESTDIR="${pkgdir}" install

  # Use Manjaro logos 
  cp $srcdir/{cof,logo,manjaro_badge,xfce_badge}.png $pkgdir/usr/share/unity-greeter

}

# vim:set ts=2 sw=2 et:
