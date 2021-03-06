################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="tinyxml2"
PKG_VERSION="1.0.12"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="zlib"
PKG_SITE="http://www.grinninglizard.com/tinyxml2/index.html"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="textproc"
PKG_SHORTDESC="tinyxml2: XML parser library"
PKG_LONGDESC="TinyXML2 is a simple, small, C++ XML parser that can be easily integrating into other programs."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CMAKE_OPTS_TARGET="-DBUILD_SHARED_LIBS=off -DBUILD_STATIC_LIBS=on"

pre_configure_target() {
  export CFLAGS="$CFLAGS -fPIC"
}

post_makeinstall_target() {
  rm -rf $INSTALL/usr
}
