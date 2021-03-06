# Extends the core U-Boot GIT recipe in meta-texasinstruments 
# to suit the OpenPandora GIT tree.

# Also overwries the license checksum to suit the updated text file in our U-Boot snapshot.
LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"

COMPATIBLE_MACHINE = "omap3-pandora"
DEFAULT_PREFERENCE_omap3-pandora = "1"

# Latest SRCREV.
SRCREV_pn-${PN}_omap3-pandora = "55d0d2dd5d07fbfd57309997c38da5281b9824b5"

PR ="r3"
PV_omap3-pandora = "omap3-pandora+${PR}+gitr${SRCREV}"

SRC_URI_omap3-pandora = "git://git.openpandora.org/pandora-u-boot.git;branch=pandora-2011.12;protocol=git \
"

UBOOT_MACHINE_omap3-pandora = "omap3_pandora_config"

S = "${WORKDIR}/git"

PACKAGE_ARCH = "${MACHINE_ARCH}"
