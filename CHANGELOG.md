### v1.0.0 @ 2020-09-30
* **[2020-09-20 10:47:15 CDT]** - Initial:
    * **[ls-by-min]** Sort `ls` by file size, descending.
    * **[stream-to-youtube.sh]** Live Screencast directly to YouTube from the CLI (via ffmpeg).
    * **[watermark.sh]** Easily embed your own image watermark onto videos (via ffmpeg).
    * **[x265.sh]** Effectively highly-compress (with acceptable visual loss) videos to H.265 HEVC using Intel's VAAPI. 
* **[2020-09-23 14:59:35 CDT]** - **[x265]** Pass all extra parameters directly to ffmpeg.
* **[2020-09-23 15:00:18 CDT]** - Added a utility to download all of a user's or organization's GitHub repos.
* **[2020-09-23 15:01:15 CDT]** - **[sync-watch]** See how much data is waiting to be written to disks.
* **[2020-09-23 15:01:37 CDT]** - **[random.sh]** Picks a random file in a given directory.
* **[2020-09-30 12:41:40 CDT]** - Only prompt once per reboot for the sudo password.
* **[2020-09-30 23:19:40 CDT]** - Added a utility to automatically move your btrfs / into subvolumes.
* **[2020-09-30 23:37:15 CDT]** - Moved the clear-cache script to ensure it runs first.
* **[2020-09-30 23:37:53 CDT]** - **[clear-cache]** Also delete Pacman's downloads.
* **[2020-09-30 23:41:29 CDT]** - **[purge-locales]** Automatically remove every non-English locale daily.
* **[2020-09-30 23:42:34 CDT]** - **[btrfs-snapshot]** Take snapshots of / every hour and every day.

### v1.1.0 @ 2020-10-01
* **[2020-10-01 00:23:15 CDT]** - **[x265.sh]** Use VAAPI for encoding using Intel graphics cards.
* **[2020-10-01 00:23:32 CDT]** - Added copyright headers.
* **[2020-10-01 00:30:00 CDT]** - Created a README.md.
* **[2020-10-01 00:37:07 CDT]** - **[random-file]** renamed for more clarity.
* **[2020-10-01 00:44:34 CDT]** - Flushed out the README.
* **[2020-10-01 00:49:44 CDT]** - **[bash_rc.aliases]** Added a whole slew of webdev aliases.
* **[2020-10-01 00:58:00 CDT]** - **[bash_rc.aliases]** Added some more descriptions.
* **[2020-10-01 01:10:26 CDT]** - **[.gitconfig]** Added a whole bunch of my git aliases. tag: v1.0.0
* **[2020-10-01 08:13:51 CDT]** - **[clear-cache]** Use nullfs if it is available.
* **[2020-10-01 08:17:42 CDT]** - **[clear-cache]** Delete broken symlinks in the ~/.cache directories.
* **[2020-10-01 08:18:38 CDT]** - **[btrfs-snapshot]** Improved the handling of snapshots at day terminuses.

### v1.1.1 @ 2020-10-05
* **[2020-10-01 08:38:03 CDT]** - **[changelog-maker-lite]** Added a utility for making pretty CHANGELOGs.

### v2.0.0 @ 2020-10-22
* **[2020-10-20 20:10:54 CDT]** - **[arch-pacman-dupe-cleaner]** Utility for resolving "error: duplicated database entry
                                  'foo'"
* **[2020-10-22 15:59:58 CDT]** - **[Major]** Relicensed to the Creative Commons Attribution v4.0 International License.
* **[2020-10-22 01:01:01 CDT]** - **[git-mtime]** Restores the file modification times of your git workdir to the repo's.
* **[2020-10-22 04:34:32 CDT]** - **[ssh-keyphrase-only-once]** Only type in your SSH keyphrase once per boot.
* **[2020-10-22 16:22:09 CDT]** - **[turn-off-monitors]** Easily turn off all of your monitors via the CLI.
* **[2020-10-22 18:36:34 CDT]** - Added a Table of Contents to the README.

Behavioral changes:
* **[2020-10-22 14:53:09 CDT]** - **[changelog-maker-lite]** Now outputs Markdown lists.

### v2.1.0 @ 2020-10-23
* **[2020-10-23 12:31:25 CDT]** - **[m]** Refactored to use /usr/bin/env shebang.
* **[2020-10-23 12:39:46 CDT]** - **[wifi-autorun-on-connect]** Autorun a script when you connect to a Wifi hotspot.
* **[2020-10-23 18:40:30 CDT]** - Translated the README into Chinese and Hindi to support 3 Billion people.

## v2.1.1 @ 2020-12-27
* **[2020-12-26 17:00:11 CST]** - **[git-shallow-pull]** Added a utility to shallow update git.
* **[2020-12-27 12:51:48 CST]** - **[git-change-author]** Easily bulk change the author's name and email in a git repo. 

## v2.2.0 @ 2021-06-04
* **[2021-06-04 09:08:31 CDT]** - **[ssh-autologin]** Automatically set up SSH autologins.

## v2.3.0 @ 2021-10-30
* **[2021-10-30 07:00:24 CDT]** - **[clone-github-repos]** Fixed a syntax error.
* **[2021-10-30 07:03:45 CDT]** - **[gitconfig]** Added a git alias for easily renaming tags.
* **[2021-10-30 07:05:00 CDT]** - **[ssh-autologin]** Fixed the exec permission.

## v2.4.0 @ 2024-01-13
* **[2024-01-13 13:55:42 CST]** Added a Bash alias to have `free` show the total memory in MiBs.
* **[2024-01-13 13:56:25 CST]** Added a Bash alias `ps-date` to show the full date timestamp of a long-running process.
* **[2024-01-13 13:56:54 CST]** Added a Bash alias to hide all of the snap /dev/loop devices from df.
* **[2024-01-13 13:59:23 CST]** [changelog-maker-lite] Bold the timestamps.

## v2.4.1 @ 2024-01-14
* **[2024-01-14 22:31:40 CST]** [arch-pacman-dupe-cleaner] Fixed the script for modern Arch.

## v2.5.0 @ 2024-01-19
* **[2020-10-14 15:53:34 CST]** [american-date] A utility to print out dates in the American format 
                                ('Fri, 19 January 2024 05:49:20 CST').
* **[2024-01-15 09:14:17 CST]** [tar-sorted] Create tar files automatically sorted by file name.
* **[2023-11-17 11:22:42 CST]** [git-commit-at-modded-time] Use a file's modified time as the git time.
* **[2024-01-19 06:17:20 CST]** [git-same-sig-time] Unifies the GPG signature time with the commit's time.

## v2.5.1 @ 2024-08-09
* **[2024-03-17 05:21:56 CDT]** [btrfs-snapshot] Added support for hourly snapshots of /code.
* **[2024-08-09 18:43:46 CDT]** [tar-sorted] Added support for --zstd archives.

## v2.6.0 @ 2024-08-12

* **[2024-08-12 02:06:41 CDT]** Added a .bash_profile.
* **[2024-08-12 02:09:39 CDT]** [launch-browser] Launch Chrome-based browsers in native Wayland.
* **[2024-08-12 02:35:43 CDT]** [framework/is_root] Added a function for determining root access.
* **[2024-08-12 03:16:29 CDT]** [framework/wait_until_mouse_or_keyboard_event] Block execution until a key is pressed, 
                                the mouse is moved, or a mouse button is clicked.
* **[2024-08-12 03:22:17 CDT]** [bash_rc.aliases] Added an alias to make `watch` honor ~/.bashrc aliases.
* **[2024-08-12 03:22:50 CDT]** [bash_rc.aliases] Replace ssh with mosh, if it is installed.
* **[2024-08-12 03:29:03 CDT]** [gitconfig] Automatically time out git when websites are not reachable.
* **[2024-08-12 03:38:25 CDT]** [arch-pacman-dupe-cleaner] Require superuser to run.
* **[2024-08-12 03:41:30 CDT]** [turn-off-monitors] A CLI script for turning off monitors in Wayland for Gnome and KDE.
* **[2024-08-12 06:08:57 CDT]** Majorly cleaned up the README and translated to Chinese, Hindi, and Spanish.

## v2.6.1 @ 2024-08-23

* **[2024-08-23 07:09:10 CDT]** [git-same-sig-time] Added proper support for time zones different than the user's computer.

## v2.7.0 @ 2024-08-24

* **[2024-08-24 12:06:32 CDT]** [bash-timer] Added the bash-timer project.

## v2.7.1 @ 2024-09-01

* **[2024-08-29 07:49:02 CDT]** [bash-timer] Added support for locales with the comma decimal separator.
* **[2024-09-01 12:31:33 CDT]** [bash-timer] Properly pad ms to 3 digits.
* **[2024-09-01 12:41:07 CDT]** [bash-timer] Greatly refactored ns math to properly calculate seconds and ms.
* **[2024-09-10 02:20:14 CDT]** [bash-timer] Fixed the "value too great" error.
* **[2024-09-11 02:22:12 CDT]** [bash-timer] Supported non-decimal locales, properly in Bash v5.

## v2.7.2 @ 2025-01-27

* **[2024-12-07 19:41:20 CST]** [turn-off-monitors] Added compatibility to KDE Desktop.
* **[2025-01-25 19:18:27 CST]** [wifi-show-password] Added a utility to show the current wifi password.
* **[2025-01-27 10:56:29 CST]** [arch-upgrade-postgres] Added a utility to automatically upgrade postgres on Arch Linux.
