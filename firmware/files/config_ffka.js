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
  // Display a checkbox that allows to display not recommended devices.
  // This only make sense if enabled_device_categories also contains not
  // recommended devices.
  recommended_toggle: false, 
  // Optional link to an info page about no longer recommended devices
  recommended_info_link: null,
  // firmware version regex
  version_regex: '-([0-9]+.[0-9]+.[0-9]+-[a-zA-Z]+\.[0-9]+-[0-9]+)-',
  // relative image paths and branch
  directories: {
    '../stable/factory/': 'stable',
    '../stable/sysupgrade/': 'stable',
    '../stable/other/': 'stable',
    '../beta/factory/': 'beta',
    '../beta/sysupgrade/': 'beta',
    '../beta/other/': 'beta',
    '../nightly/factory/': 'nightly',
    '../nightly/sysupgrade/': 'nightly'
    '../nightly/other/': 'nightly'
  },
  // page title
  title: 'Firmware FFWP',
  // branch descriptions shown during selection
  branch_descriptions: {
    stable: 'Gut getestet, zuverlässig und stabil.',
    beta: 'Vorabtests neuer Stable-Kandidaten.',
    experimental: 'Ungetestet, automatisch generiert.'
  },
  // recommended branch will be marked during selection
  recommended_branch: 'stable',
  // path to preview pictures directory
  preview_pictures: 'pictures/',
  // experimental branches (show a warning for these branches)
  experimental_branches: ['nightly'],
  // link to changelog
  changelog: 'https://gitlab.karlsruhe.freifunk.net/firmware/site/commits/ffwp_multidomain'
};
