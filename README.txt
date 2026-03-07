LEAF: A MARKDOWN EDITOR
Vibe coded by Dan (c) 2026
Version 1.2.2

================================================================================
WHAT IS LEAF?
================================================================================

Leaf is a lightweight, distraction-free writing tool that runs entirely in your
web browser as a single HTML file. There's nothing to install, no account to
create, and no internet connection required. Just open the file and write.

The fonts (iA Writer Mono, Duo, and Quattro) are embedded directly in the HTML
file, so they work offline and look identical on every machine.


================================================================================
FILES IN THIS PACKAGE
================================================================================

  editor.html               The editor itself
  leaf.webmanifest          PWA manifest (for browser installation)
  sw.js                     Service worker (for offline PWA support)
  leaf-icon-192.png         App icon (192px)
  leaf-icon-512.png         App icon (512px)
  Leaf.bat                  Windows launcher (opens in Chrome with no browser UI)
  LeafLauncher-platypus.sh  Mac app launcher script
  README.txt                This file

Keep all files in the same folder.


================================================================================
GETTING STARTED
================================================================================

OPTION 1 - Open directly in a browser
Double-click editor.html. Works in any modern browser.

OPTION 2 - Windows launcher (Chrome)
Double-click Leaf.bat to open in a clean Chrome window with no browser UI.
To create a desktop shortcut, right-click Leaf.bat and choose
Send to > Desktop (create shortcut).

OPTION 3 - Install as a PWA (Chrome / Edge)
Run a local server first:
  python -m http.server 8080
Then open http://localhost:8080/editor.html in Chrome. An install button
will appear in the toolbar. Click it to install Leaf as a standalone app.
Once installed, you can stop the server -- the app works offline from then on.

OPTION 4 - Mac app (Platypus)
See the Mac App section below.


================================================================================
MAC APP (PLATYPUS)
================================================================================

To run Leaf as a proper native Mac app with a dock icon:

1. Install Platypus (free) from: sveinbjorn.org/platypus

2. Edit LeafLauncher-platypus.sh and set the LEAF_DIR path to your Leaf folder:
     LEAF_DIR="$HOME/Documents/Leaf"

3. In Platypus:
   - Script: select LeafLauncher-platypus.sh
   - App Name: Leaf
   - Script Type: /bin/zsh
   - Interface: None
   - Icon: drag leaf-icon-512.png onto the icon well
   - Check "Remain running after execution"
   - Click Create App and save to Applications

4. Drag the app from Applications to your dock.


================================================================================
THE INTERFACE
================================================================================

TOOLBAR
  Filename field        Set the name of your file before saving
  save                  Downloads your file (or saves in place in Chrome)
  open                  Load an existing .txt or .md file
  write / split / prev  Switch between write, split, and preview modes
  Theme menu            Choose your colour theme
  Font menu             Choose your writing font
  Size menu             Choose your font size
  autohide              Hides toolbar while typing; hover top of screen to show
  focus                 Fullscreen focus mode (Esc or Ctrl+Shift+F to exit)
  ...                   About Leaf

TAB BAR
  Shows open files as subtle labels below the toolbar.
  Click a tab to switch files. Click + to open a new tab.
  Click x on a tab to close it (prompts to save if unsaved changes exist).
  In autohide mode, the toolbar hides but the tab bar stays visible.
  In focus mode, both toolbar and tab bar are hidden.

  AUTOHIDE + TAB BAR BEHAVIOUR
  When autohide is enabled, clicking into the editor hides the toolbar.
  The tab bar fades out after 3 seconds of inactivity.
  Move your mouse within 60px of the top to reveal the tab bar.
  Move to within 8px of the very top to reveal the full toolbar as well.
  The pin icon (⊙/⦿) appears in the tab bar once the toolbar has hidden.
  Click it to pin the tab bar so it never fades. Click again to unpin.
  Pin state is remembered between sessions.

STATUS BAR
  Shows live word count, character count, line count, and cursor position.
  When text is selected, shows the word and character count of the selection.
  Fades out in focus mode and reappears on hover.
  Displays a random welcome message on launch (can be disabled in About).


================================================================================
THEMES
================================================================================

  parchment   Warm cream (default)
  paper       Cool white with a slight blue-grey tint
  dark        Near-black with cool grey text
  moss        Dark green
  slate       Dark blue-grey
  terminal    Black with dimmed green phosphor text
  custom      Pick your own colours using the colour picker or hex code input

Settings (theme, font, size, autohide, pin state) are remembered between
sessions.


================================================================================
FONTS
================================================================================

All fonts are embedded in the HTML file and work offline.

  iA Writer Mono      Classic monospaced typewriter feel (default)
  iA Writer Duo       Proportional with a monospace structure
  iA Writer Quattro   Most proportional of the three, very readable
  JetBrains Mono      Clean developer monospace
  Fira Code           Elegant monospace with ligatures
  Inconsolata         Clean, neutral console font
  Share Tech Mono     Softer retro monospace


================================================================================
KEYBOARD SHORTCUTS
================================================================================

  Ctrl+S          Save file
  Ctrl+B          Bold selected text (**text**)
  Ctrl+I          Italic selected text (*text*)
  Ctrl+K          Wrap selection in link [text](url)
  Ctrl+1          Heading 1 (toggle)
  Ctrl+2          Heading 2 (toggle)
  Ctrl+3          Heading 3 (toggle)
  Ctrl+4          Heading 4 (toggle)
  Ctrl+Shift+F    Toggle focus mode
  Ctrl+Shift+P    Toggle preview mode
  Ctrl+Shift+S    Toggle split view
  Ctrl+N          New tab
  Ctrl+W          Close current tab
  Ctrl+[          Previous tab
  Ctrl+]          Next tab
  Esc             Exit focus mode / close About dialog
  Tab             Insert two spaces


================================================================================
FOCUS MODE
================================================================================

Press the focus button or Ctrl+Shift+F to enter fullscreen focus mode.
Move your mouse to the top of the screen to peek at the toolbar temporarily.
The status bar fades out and reappears on hover. Press Esc to exit.


================================================================================
AUTOHIDE MODE
================================================================================

Click autohide to hide the toolbar when you click into the writing area.
Move your mouse to the very top of the screen to reveal the toolbar.
It stays visible as long as your mouse is over it, then hides again when
you move away.

The tab bar stays visible by default in autohide mode (pinned). It fades
after 3 seconds if unpinned. Move your mouse within 60px of the top to
bring the tab bar back. Go all the way to the top edge to reveal the
full toolbar too.


================================================================================
TABS
================================================================================

Leaf supports multiple open files in a single window via the tab bar.
Each tab has its own file, content, and save handle. Open a new tab with
the + button or Ctrl+N. Switch tabs by clicking or with Ctrl+[ and Ctrl+].
Close a tab with x or Ctrl+W -- if there are unsaved changes you will be
prompted to save first. A dot appears on the tab name when there are
unsaved changes.


================================================================================
SAVING
================================================================================

In Chrome, the first save opens a Save As dialog. Every subsequent save
writes silently to the same file with no dialog. The status bar flashes
a saved confirmation.

In Brave and other browsers, each save downloads the file. Name the file
using the filename field before saving.

Leaf also autosaves your work to browser storage every 30 seconds. If Leaf
is closed unexpectedly and you reopen it, you will be offered the chance to
restore your last autosaved draft.


================================================================================
CHANGELOG
================================================================================

v1.2.2
  - Ctrl+Shift+S toggles split view
  - Split view scroll sync: editor and preview scroll together in real time
  - Scroll sync snaps preview into position when entering split mode
  - Sync toggle button (⇅/↕) on the split divider — click to lock or free scrolling
  - Last pane scrolled determines sync position when re-enabling scroll lock
  - Scroll sync preference remembered between sessions
  - Browser title bar shortened to "Leaf: A Markdown Editor" 

v1.2.1
  - Welcome message toggle persists correctly between sessions
  - Tab bar pin state remembered between sessions and across autohide toggles
  - Theme selector correctly shows saved theme on launch
  - Parchment set as default theme on first launch

v1.2
  - Random retro-style welcome message scrolls in the status bar on launch
  - Welcome message can be disabled via toggle in the About modal
  - Ctrl+Shift+P toggles preview mode
  - Ctrl+N opens a new tab
  - Ctrl+W closes the current tab
  - Ctrl+1 through Ctrl+4 insert and toggle heading levels
  - Ctrl+K wraps selection in a markdown link [text](url)
  - Tab bar pin/unpin in autohide mode (⊙/⦿)
  - Two-stage autohide reveal: mid zone shows tabs, top edge shows toolbar
  - Tab bar fades gracefully after inactivity in unpinned autohide mode
  - Pin state remembered between sessions
  - Toolbar hides only when clicking into editor (not immediately on toggle)
  - Paper theme updated to cool white with blue-grey tint
  - Parchment set as default theme on first launch
  - Tab name syncs correctly after renaming and saving
  - Tab bar surface color matches status bar
  - Placeholder text now adapts to each theme color

v1.1

  - Tabs: multiple files open simultaneously in a single window
  - Tab bar hides in focus mode, stays visible in autohide mode
  - Autosave every 30 seconds to browser storage with restore on reopen
  - Unsaved changes warning when closing the window
  - Silent save-in-place using File System Access API (Chrome/Edge)
  - Numbered list auto-continue on Enter (increments number automatically)
  - Bullet list auto-continue on Enter (adds dash); double Enter exits list
  - Numbered and bulleted lists render correctly in preview mode
  - Custom theme hex code input added alongside colour picker
  - Custom theme colours now persist across sessions
  - Selection highlight colour matches current theme accent
  - Editor background colour fixed on mobile browsers
  - iA Writer Mono, Duo, and Quattro fonts embedded directly in the file
  - Replaced Space Mono with Inconsolata in font list
  - Dark theme changed from blue-black to neutral grey-black
  - Default font changed to iA Writer Mono
  - Default font size changed to 18px
  - Editor text wraps correctly when window is narrower than 68 characters
  - Top and bottom padding reduced to 24px
  - About popup added (... button in toolbar) with icon, version, and credit
  - Secret easter egg added

v1.0
  - Initial release
  - Markdown editor with write, split, and preview modes
  - Themes: parchment, paper, dark, moss, slate, terminal, custom
  - Font and size selection
  - Focus mode with toolbar peek on mouse-to-top
  - Autohide toolbar mode
  - Status bar with word, character, line count and cursor position
  - Selection word count
  - PWA support with offline caching
  - Windows Chrome launcher (Leaf.bat)
  - Mac Platypus launcher


================================================================================
LEAF IS A SINGLE HTML FILE. NO DATA EVER LEAVES YOUR COMPUTER.
================================================================================
