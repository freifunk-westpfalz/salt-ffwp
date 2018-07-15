/*
*
* You should have received a copy of the GNU Affero General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

var config = {
 // list images on console that match no model
 listMissingImages: false,
 // see devices.js for different vendor model maps
 vendormodels: vendormodels,
 // community prefix of the firmware images
 community_prefix: 'gluon-ffwp-',
 // set enabled categories of devices (see devices.js)
 enabled_device_categories: ["recommended", "4_32", "8_32"],
 // firmware version regex
 version_regex: '-([0-9]+.[0-9]+.[0-9]+-[a-zA-Z]+\.[0-9]+-[0-9]+)-',
 // relative image paths and branch
 directories: {
   '../stable/factory/': 'stable',
   '../stable/sysupgrade/': 'stable',
   '../beta/factory/': 'beta',
   '../beta/sysupgrade/': 'beta',
   '../nightly/factory/': 'nightly',
   '../nightly/sysupgrade/': 'nightly'
 },
 // path to preview pictures directory
 preview_pictures: 'pictures/',
// experimental branches (show a warning for these branches)
experimental_branches: ['nightly'],
 // link to changelog
 changelog: 'https://github.com/freifunk-westpfalz/site-ffwp/blob/master/README.md'
};
