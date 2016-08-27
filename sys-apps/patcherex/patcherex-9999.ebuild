# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit eutils cmake-utils

if [[ "${PV}" == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/shellphish/${PN}.git
		git://github.com/shellphish/${PN}.git"
		KEYWORDS=""
else
	SRC_URI="https://github.com/shellphish/${PN}/archive/${PV}.tar.gz"
	KEYWORDS="~x86 ~amd64"
fi

DESCRIPTION="An automated patching engine"
HOMEPAGE="https://github.com/shellphish/patcherex"
LICENSE="BSD"
SLOT="0"

DEPEND="dev-lang/nasm
sys-devel/clang"

