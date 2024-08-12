# HopeSeekr के Bash स्क्रिप्ट संग्रह

आपके जीवन को आसान बनाने के लिए उपयोगिता।

मेरे द्वारा दैनिक आधार पर या नए सिस्टम इंस्टॉल पर उपयोग किए जाने वाले स्क्रिप्ट, जो Linux के साथ मेरे अनुभव 
को पर्याप्त रूप से सुधारते हैं!

![Hope's Logo](https://avatars2.githubusercontent.com/u/50506504?s=200&v=4)

वे मुझे प्रदान किए गए उपयोगिता की मात्रा के अनुसार क्रमबद्ध हैं।

अनुवाद: [中文](README.cn.md), [हिन्दी](README.hi.md)

हाल के परिवर्तन
==============

#### v2.6.0 @ 2024-08-12

* **[2024-08-12]** README को बड़े पैमाने पर साफ किया गया और चीनी, हिंदी, और स्पेनिश में अनुवाद किया गया।
* **[2024-08-12]** [turn-off-monitors] Gnome और KDE के लिए Wayland में मॉनिटर को बंद करने का पूर्ण समर्थन जोड़ा गया।
* **[2024-08-12]** [arch-pacman-dupe-cleaner] को चलाने के लिए सुपरयूज़र की आवश्यकता है।
* **[2024-08-12]** [gitconfig] जब वेबसाइटें पहुंच योग्य नहीं होती हैं, तब git को स्वचालित रूप से टाइम आउट करें।
* **[2024-08-12]** [bash_rc.aliases] यदि mosh स्थापित है, तो ssh को बदलें।
* **[2024-08-12]** [bash_rc.aliases] एक नया एलियास जोड़ा गया जिससे `watch` ~/.bashrc एलियास को मान्यता दे।
* **[2024-08-12]** [framework/wait_until_mouse_or_keyboard_event] तब तक निष्पादन को रोकें जब तक एक कुंजी दबाई नहीं जाती, माउस नहीं हिलाया जाता, या माउस बटन क्लिक नहीं किया जाता।
* **[2024-08-12]** [framework/is_root] रूट एक्सेस का निर्धारण करने के लिए एक फ़ंक्शन जोड़ा गया।
* **[2024-08-12]** [launch-browser] Chrome-आधारित ब्राउज़र को मूल Wayland में लॉन्च करें।
* **[2024-08-12]** एक .bash_profile जोड़ा गया।

#### v2.5.1 @ 2024-08-09
* **[2024-03-17]** [btrfs-snapshot] /code के प्रति घंटा स्नैपशॉट के लिए सहायता जोड़ी गई।
* **[2024-08-09]** [tar-sorted] ने --zstd संग्रह के लिए सहायता जोड़ी।

#### v2.5.0 @ 2024-01-19
* **[2020-10-14]** [american-date] अमेरिकी प्रारूप ('Fri, 19 January 2024 05:49:20 CST') 
                   में दिनांक प्रिंट करने के लिए एक यूटिलिटी।
* **[2024-01-15]** [tar-sorted] फ़ाइल नाम द्वारा स्वचालित रूप से क्रमबद्ध tar फ़ाइलें बनाएँ।
* **[2023-11-17]** [git-commit-at-modded-time] git समय के रूप में फ़ाइल के संशोधित समय
                   का उपयोग करें।
* **[2024-01-19]** [git-same-sig-time] कमिट के समय के साथ GPG हस्ताक्षर समय को 
                   एकीकृत करता है।

विषय-सूची (वर्गीकृत)
===============================

* **सुपर उत्पादकता**
    * [bash_profile](#bash_profile) - पावर उपयोगकर्ताओं के लिए उच्च-गुणवत्ता `.bash_profile` और `.bashrc`।
    * [bash_rc.aliases](#bash_rcaliases) - बेहतर जीवन गुणवत्ता के लिए हाई-ऑक्टेन .bashrc उपनाम और कार्य।
    * [sudoers.d/00_prompt_once](#sudoersd00_prompt_once) - प्रति बूट केवल एक बार अपने sudo पासवर्ड के लिए संकेत।
    * [ssh-autologin](#ssh-autologin) - स्वचालित रूप से SSH स्वत: लॉगिन सेट करें।
    * [ssh-keyphrase-only-once](#ssh-keyphrase-only-onceinstaller) - प्रति बूट केवल एक बार अपने SSH keyphrase के लिए संकेत दें।
    * [gitconfig](#gitconfig) - Git CLI कॉन्फ़िगरेशन के लिए हाई-ऑक्टेन।
* **Git जीवन गुणवत्ता**
    * [git-change-author](#git-change-author) - आसानी से git रिपो में लेखक का नाम और ईमेल बदलें। 
    * [git-commit-at-modded-time](#git-commit-at-modded-time) - git समय के रूप में फ़ाइल के संशोधित समय का उपयोग करें।
    * [git-mtime](#git-mtime-git-modified-time-restorer) - प्रत्येक फ़ाइल के संशोधन समय को रिपो के इतिहास की तरह बहाल करता है।
    * [git-same-sig-time](#git-same-sig-time) - प्रतिज्ञान के समय के साथ GPG हस्ताक्षर समय को एकीकृत करता है।
    * [git-shallow-pull](#esotericgit-shallow-pull) - Shallow `git clone --depth 1` रिपोजिटरी को अद्यतन करता है। 
* **CronTabs**
    * [cron.daily/00_clear-cache](#crondaily00_clear-cache) - प्रतिदिन रात में निरर्थक कैश फ़ाइलों को निकालें।
    * [cron.daily/01_purge-locales](#crondaily01_purge-locales) - निरर्थक intl स्थानीय फ़ाइलों को निकालें।
    * [cron.hourly/btrfs-snapshot](#cronhourlybtrfs-snapshot) - अपने BTRFS / को प्रत्येक घंटे बैकअप करें।
    * [cron.daily/btrfs-snapshot](#crondailybtrfs-snapshot) - अपने BTRFS / को प्रतिदिन बैकअप करें।
    * [cron.hourly/php-clean-tmp](#cronhourlyphp-clean-tmp) - व्यस्त सर्वरों पर PHP अस्थायी फ़ाइलों को साफ करता है।
* **लाइफ का क्वालिटी**
    * [launch-browser](#launch-browser) - पूर्ण-Wayland में ब्राउज़र लॉन्च करने वाला यूटिलिटी स्क्रिप्ट।
    * [ls-by-min](#ls-by-min) - `ls` के आउटपुट को फ़ाइल आकार के अनुसार, घटते क्रम में क्रमबद्ध करता है।
    * [random-file](#random-file) - यादृच्छिक रूप से एक फ़ाइल या निर्देशिका चुनता है और प्रदर्शित करता है।
    * [sync-watch](#sync-watch) - छोटी, अद्यतन प्रदर्शन देता है कि डिस्क पर कितने MB लिखने की आवश्यकता है।
    * [tar-sorted](#tar-sorted) - फ़ाइल नाम द्वारा स्वचालित रूप से क्रमबद्ध tar फ़ाइलें बनाता है।
    * [turn-off-monitors](#turn-off-monitors) - कमांड लाइन (CLI) के माध्यम से सभी मॉनिटर बंद कर देता है।
* **उबेर स्क्रिप्ट**
    * [american-date](#american-date) - अमेरिकी प्रारूप में दिनांक प्रिंट करने के लिए एक उपयोगिता।
    * [changelog-maker-lite](#changelog-maker-lite) - प्रतिबद्ध इतिहास से जल्दी से एक सुंदर चेंजलॉग बनाता है।
    * [stream-to-youtube](#stream-to-youtube) - CLI से सीधे YouTube पर लाइव स्क्रीनकास्ट करें।
    * [watermark.sh](#watermarksh) - आसानी से वीडियो पर अपने खुद के चित्र वॉटरमार्क एम्बेड करें।
    * [wifi-autorun-on-connect](#wifi-autorun-on-connectinstaller) - Wifi हॉटस्पॉट से कनेक्ट होने पर स्क्रिप्ट को स्वतः चलाएँ।
    * [x265.sh](#x265sh) - VAAPI का उपयोग करके Intel ग्राफिक्स कार्ड के माध्यम से h265 HEVC में ट्रांसकोड करें।
* **एसोटेरिक उपयोगिताएँ**
    * [arch-pacman-dupe-cleaner](#esotericarch-pacman-dupe-cleaner) - डुप्लिकेट Arch Linux Pacman प्रविष्टियों को हटाएँ।
    * [init-btrfs-rootfs](#esotericinit-btrfs-rootfs) - सब कुछ संगठित BTRFS उपमाध्यमों में डालता है + स्नैपशॉट को चालू करता है।
    * [clone-github-repos.php](#esotericclone-github-reposphp) - एक उपयोगकर्ता/संगठन के सभी GitHub रिपोजिटरी डाउनलोड करता है।
* **बैश फ्रेमवर्क**
    * [is_root](#is_root) - `is_root` फ़ंक्शन प्रदान करता है, यह निर्धारित करने के लिए कि वर्तमान उपयोगकर्ता के पास रूट एक्सेस है या नहीं।
    * [wait_until_mouse_or_keyboard_event](#wait_until_mouse_or_keyboard_event) - माउस को हिलाने, माउस बटन क्लिक करने या कुंजी दबाने तक निष्पादन को रोके रखता है।

* [लाइसेंस](#लाइसेंस) - क्रिएटिव कॉमन्स v4.0 अंतर्राष्ट्रीय
* [लेखक के बारे में](#लेखक-के-बारे-में)

## bash_profile

एक सुपर शक्तिशाली सिस्टम के लिए BashScripts को एक साथ जोड़ता है।

## bash_rc.aliases

यह संभवतः परियोजना का सबसे मूल्यवान टुकड़ा है!

ये दर्जनों उपनाम Linux के साथ काम करने और विकसित करने को अधिक कुशल और सुव्यवस्थित बनाते हैं 
वेब ऐप सॉफ़्टवेयर.

इसे जाँचें! [bash_rc.aliases](bash_rc.aliases)

## sudoers.d/00_prompt_once

यह `sudo` को एक बार केवल एक बूट के दौरान आपके पासवर्ड के लिए पूछेगा। यह टर्मिनलों में नहीं पूछेगा और समय समाप्त नहीं होगा।
रीबूट पर, यह स्वचालित रूप से समाप्त हो जाएगा।

## ssh-autologin

यदि आवश्यक हो तो स्वचालित रूप से एक SSH निजी कुंजी सेट करता है और इसे इंस्टॉल करता है 
(.ssh भी बनाता है, यदि आवश्यक हो तो) रिमोट सर्वर पर।

## ssh-keyphrase-only-once.installer

ठीक से अपने OpenSSH क्लाइंट को कॉन्फ़िगर करता है और `ssh-agent` को आपके `~/.bash_profile` में इस तरह से इंस्टॉल करता है
कि आपको `ssh-agent` के साथ काम करने वाली किसी भी चीज़ के लिए लॉगिन पर केवल एक बार अपना SSH keyphrase दर्ज करना होगा।

## gitconfig

अनुभवी सॉफ़्टवेयर डेवलपर्स के लिए एक अत्यधिक अनुकूलित .gitconfig, जो अपनी दैनिक उत्पादकता बढ़ाने के लिए तैयार हैं।
इसे ~/.gitconfig में इंस्टॉल करें।

    git pretty
    git ll

मानक ISO दिनांकों के साथ एक सुंदर बहु-रंगीन लॉग दिखाता है:

![git pretty](https://user-images.githubusercontent.com/1125541/94773688-e904c300-0381-11eb-878a-d0396d2bf102.png)

    git fix

जल्दी से अंतिम दो प्रतिबद्धताओं को एक-दूसरे में रिबेस करने में कूदता है।

    git alterego

जल्दी से वर्तमान रिपो को पहले से प्रतिबद्ध प्रतिबद्धता के लिए अपने मुख्य alterego खाते का उपयोग करने के लिए स्विच करें। 

    git ego

`git alterego` का विपरीत।

    git resign <hash>

जल्दी से बल्क कमिट <hash> से नवीनतम तक फिर से हस्ताक्षर करें।

यह विशेष रूप से उपयोगी है जब आपकी GPG कुंजी समाप्त हो जाती है और आपको इसे नवीनीकृत करने और फिर पुनः हस्ताक्षर करने की आवश्यकता होती है।

    git c: checkout
    git cp: cherry-pick
    git cpm: cherry-pick for Merge commits

git के उपयोग को अधिक कुशल बनाने के लिए यूटिलिटी उपनाम।

    git shows

`git log` में प्रत्येक प्रतिबद्धता के लिए GPG हस्ताक्षर दिखाता है।

## git-change-author

एक git रिपोजिटरी में किसी भी कमिट के लेखक के नाम और ईमेल को आसानी से बल्क में बदलें।

उपयोग: `git-change-author "आपका नाम" "email@address" [SHA1]`

git रिपोजिटरी में किसी भी प्रतिबद्धता के लेखक का नाम और ईमेल को थोक में बदलता है।

उपयोग: `git-change-author "आपका नाम" "email@address" [SHA1]`

## git-commit-at-modded-time

git समय के रूप में फ़ाइल के संशोधित समय का उपयोग करें।

उदाहरण:

    $ ls -l american-date
     #-rwxrwxr-x+ 1 1MB Oct 14  2020  american-date
    $ ./git-commit-at-modded-time american-date
    $ git pretty american-date
    7462b66 G 2020-10-14 15:53:34 -0500 Theodore R. Smith

## git-mtime Git संशोधित समय रिस्टोरर 

आपकी कार्य निर्देशिका में प्रत्येक फ़ाइल के संशोधन समय को पुनर्स्थापित करता है जब इसे अंतिम बार 
रिमोट git रिपोजिटरी में अद्यतन किया गया था।

जब आप एक रिपोजिटरी चेकआउट करते हैं और इसे चलाते हैं, तो आपका वर्कडीर इससे चला जाता है:

    -rwxrwxr-x+ 1 tsmith users 1MB Oct 22 01:58 changelog-maker-lite*
    -rw-rw-r--+ 1 tsmith users 1MB Oct 22 01:58 CHANGELOG.txt
    -rw-rw-r--+ 1 tsmith users 1MB Oct 22 01:58 gitconfig
    -rwxrwxr-x+ 1 tsmith users 1MB Oct 22 01:58 git-mtime

इसमें:

    -rwxrwxr-x+ 1 tsmith users 1MB Oct  1 08:38 changelog-maker-lite*
    -rw-rw-r--+ 1 tsmith users 1MB Oct  1 01:10 gitconfig
    -rwxrwxr-x+ 1 tsmith users 1MB Sep 30 23:19 git-mtime

## git-same-sig-time

प्रतिज्ञान के समय के साथ GPG हस्ताक्षर समय को एकीकृत करता है।

पहले:

     gpg: Signature made Fri 19 Jan 2024 06:50:44 AM CST
     gpg:                using RSA key 4BF826131C3487ACD28F2AD8EB24A91DD6125690
     gpg: Good signature from "Theodore R. Smith <theodore@phpexperts.pro>" [ultimate]
     43578ec G 2024-01-16 01:52:41 -0600 Theodore R. Smith   [m] Updated the packages and exclusion lists. HEAD
     gpg: Signature made Fri 19 Jan 2024 06:50:25 AM CST
     gpg:                using RSA key 4BF826131C3487ACD28F2AD8EB24A91DD6125690
     gpg: Good signature from "Theodore R. Smith <theodore@phpexperts.pro>" [ultimate]
     8ab4104 G 2024-01-15 08:27:07 -0600 Theodore R. Smith   Upgraded to PHP 8.3.

बाद में:

     gpg: Signature made Tue 16 Jan 2024 01:52:41 AM CST 
     gpg:                using RSA key 4BF826131C3487ACD28F2AD8EB24A91DD6125690
     gpg: Good signature from "Theodore R. Smith <theodore@phpexperts.pro>" [ultimate]  
     515e36b G 2024-01-16 01:52:41 -0600 Theodore R. Smith   [m] Updated the packages and exclusion lists. HEAD
     gpg: Signature made Mon 15 Jan 2024 08:27:07 AM CST
     gpg:                using RSA key 4BF826131C3487ACD28F2AD8EB24A91DD6125690
     gpg: Good signature from "Theodore R. Smith <theodore@phpexperts.pro>" [ultimate]
     22c5040 G 2024-01-15 08:27:07 -0600 Theodore R. Smith   Upgraded to PHP 8.3.

## tar-sorted
 
फ़ाइल नाम द्वारा स्वचालित रूप से क्रमबद्ध tar फ़ाइलें बनाता है।

यह विशेष रूप से ext4 जैसी यादृच्छिक-क्रम फ़ाइल सिस्टम पर सहायक है।

बेटरजिस्ट कलेक्टर के साथ, हम इसका उपयोग मोटे तौर पर अनुमान लगाने के लिए करते हैं 
कि लाखों फ़ाइलों वाली बहु-गीगाबाइट फ़ाइलों को संपीड़ित और निकालने में कितना समय लगेगा।

यह `tar` का एक ड्रॉप-इन प्रतिस्थापन है, और समान तर्क का उपयोग करता है।

वैकल्पिक रूप से, आप सीधे `~/.bashrc` में फ़ंक्शन इंस्टॉल कर सकते हैं।

## cron.daily/00_clear-cache

- प्रत्येक गैर-रूट उपयोगकर्ता की ~/.cache डायरेक्टरी को खाली करता है।
- Pacman के पैकेज कैश डायरेक्टरी को खाली करता है।

यह वैकल्पिक रूप से SSD पर टूट-फूट को सीमित करने के लिए [nullfsvfs](https://github.com/abbbi/nullfsvfs) का उपयोग कर सकता है।

## cron.daily/01_purge-locales

प्रतिदिन प्रत्येक गैर-EN स्थानीय फ़ाइल को हटाता है।

यह आमतौर पर, 400-1000 MB जगह बचाता है।

## cron.hourly/btrfs-snapshot

प्रत्येक घंटे पूरे घंटे पर / का BTRFS स्नैपशॉट लेता है।

## cron.daily/btrfs-snapshot

पिछले दिन के प्रति घंटा स्नैपशॉट को साफ करते हुए दैनिक स्नैपशॉट को बनाए रखता है। 

## cron.hourly/php-clean-tmp

व्यस्त सर्वरों पर अन्यथा-बेकार PHP अस्थायी फ़ाइलों को साफ करता है।
* पुरानी सत्र फ़ाइलें जिन्हें पिछले एक घंटे में संशोधित नहीं किया गया है।
* phpunit अस्थायी फाइलें।
* phpstan अस्थायी फाइलें।

## american-date

अमेरिकी प्रारूप में दिनांक प्रिंट करने के लिए एक उपयोगिता

    Fri, 19 January 2024 05:49:20 CST

## changelog-maker-lite

संक्षिप्त git प्रतिबद्ध लॉग के आधार पर आसानी से [CHANGELOGs](CHANGELOG.md) बनाता है:

    [2020-10-01 00:23:15 CDT] - [x265.sh] VAAPI का उपयोग करके Intel ग्राफिक्स कार्ड का उपयोग करके एन्कोडिंग।
    [2020-10-01 00:30:00 CDT] - README.md बनाया।
    [2020-10-01 00:37:07 CDT] - [random-file] अधिक स्पष्टता के लिए नाम बदला।
    [2020-10-01 00:44:34 CDT] - रीडमी को फ्लश करें।
    [2020-10-01 00:49:44 CDT] - [bash_rc.aliases] में वेबडीव उपनामों का एक पूरा समूह जोड़ा।
    [2020-10-01 00:58:00 CDT] - [bash_rc.aliases] कुछ और विवरण जोड़े।
    [2020-10-01 01:10:26 CDT] - [.gitconfig] मेरे git उपनामों का एक पूरा बंच जोड़ा। टैग: v1.0.0
    [2020-10-01 08:17:42 CDT] - [clear-cache] ~/.cache डायरेक्टरी में टूटी हुई symlinks हटाएं।

## launch-browser <browser-path>

1. यह पता लगाता है कि उपयोगकर्ता Wayland चला रहा है या नहीं। यदि ऐसा है, तो क्रोमियम-आधारित ब्राउज़रों के लिए, यह पास होगा
   उत्कृष्ट प्रदर्शन के लिए मूल-Wayland (XWayland नहीं) में चलाने के लिए आवश्यक ध्वज।
2. यह हमेशा Gnome Keychain का उपयोग करके लॉन्च करेगा, ताकि जब भी आप KDE पर स्विच करते हैं तो आपके सभी कुकीज़ और 
   स्थायी लॉगिन खो न जाएं, और इसके विपरीत।

## ls-by-min <MB>

फ़ाइल आकार के अनुसार क्रमबद्ध फ़ाइलों की सूची लौटाता है, घटते हुए, जो कि कम से कम X MB बड़े हैं।

## random-file

निर्देशिका / PWD में एक यादृच्छिक फ़ाइल चुनता है।

## stream-to-youtube

सीधे CLI से YouTube CLI लाइवस्ट्रीम स्क्रीनकास्टर (ffmpeg के माध्यम से)!

## sync-watch

प्रदर्शित करता है कि [धीमे] डिस्क पर कितने मेगाबाइट अभी भी लिखने की आवश्यकता है।

    Every 5.0s: grep -e Dirty: -e Writeback: /proc/meminfo                                                    asus-z13: Fri Jan 19 07:09:32 2024
    
    Dirty:            751552 kB
    Writeback:             0 kB

## turn-off-monitors

सीएलआई के माध्यम से आसानी से आपके सभी मॉनिटर बंद कर देता है।

जब आप सिर्फ दूर जाना चाहते हैं और लॉक स्क्रीन के बारे में ज्यादा चिंता नहीं करना चाहते हैं।

## wifi-autorun-on-connect.installer

एक NetworkManager स्क्रिप्ट इंस्टॉल करता है जो स्वचालित रूप से तब चलता है जब विशिष्ट WiFi नेटवर्क से कनेक्ट होता है।        

## watermark.sh

ffmpeg के माध्यम से वीडियो में वॉटरमार्क जोड़ता है।

## x265.sh

Intel ग्राफिक्स कार्ड का उपयोग करके ffmpeg के माध्यम से x265 HEVC में ट्रांसकोड करता है।

# एसोटेरिक उपयोगिताएँ

## esoteric/arch-pacman-dupe-cleaner

Arch Linux में डुप्लीकेट पैकमैन डेटाबेस प्रविष्टियों को स्वचालित रूप से ठीक करने में सहायता करता है।

इसका उद्देश्य दुर्लभ समस्या का समाधान करना है: "त्रुटि: डुप्लिकेट डेटाबेस प्रविष्टि 'foo'"

## esoteric/git-shallow-pull

शैलो `git clone --depth 1` रिपोजिटरी को उथला अद्यतन करता है।

## esoteric/init-btrfs-rootfs

Arch Linux में, एक btrfs सेटअप / में प्रत्येक एकल फ़ाइल डालता है। यह महान सीमाएं लगाता है
सबवॉल=5 के साथ सिस्टम को ठीक से प्रबंधित करने की क्षमता, जिसमें केवल सबवॉल्यूम्स होते हैं।

यह स्क्रिप्ट निम्न कार्य करता है:

* नई रूट-स्तरीय स्नैपशॉट बनाता है: `@rootfs` (/), `@snapshots`, `@important`, और `@home`।
* `/` में फ़ाइलें `/@rootfs` में ले जाता है, `/home` को `/home` में और नए `/snaps` और `/important` बनाता है।
* `/media/true-root` बनाता है जो `/ (subvol=5)` पर स्वतः माउंट किया जाता है।
* इस परियोजना में `cron.d` auto-snapshot cronjobs के साथ एकीकृत करता है
   * `/` की `/snaps/daily/YYYY-MM-DD` में दैनिक स्नैपशॉट ली जाती है।
   * `/important` की `/snaps/important/YYYY-MM-DD/HH` में **प्रति घंटा** स्नैपश
ॉट ली जाती है।
   * `/important` को compression-enabled के लिए सेट किया गया है।
   * सेटअप `/home` कुल डिस्क स्पेस के 10% per-user आधार पर और कुल डिस्क स्पेस का 50% प्रत्येक उपयोगकर्ता के लिए कोटा-लागू करने के लिए।
   * `/home` स्नैपशॉट को compression-enabled के लिए सेट किया गया है।
   * उपयोगकर्ता के `.*` फ़ाइलों के लिए `/home` रोलिंग 7-दिवसीय स्नैपशॉटिंग है,
     `cache` डायरेक्टरी को छोड़कर ([cron.daily/00_clear-cache] का उपयोग करते समय)।

### समस्या

Arch Linux / में सभी को मुख्य BTRFS सबवॉल्यूम (ID=5) में डालता है।

इसका मतलब है कि आम स्नैपशॉटिंग और सबवॉल्यूम कार्य, विशेष रूप से पहले से (उदाहरण के लिए, काम करने) पर वापस लौटना  रूट सबवॉल्यूम असाधारण रूप से कठिन है और एक की आवश्यकता होती है रेस्क्यू बूट, आदि।

### समाधान

प्रदान किया गया समाधान स्थिति को हॉटफिक्स करता है, उम्मीद है कि बिना किसी रेस्क्यू डिस्क की आवश्यकता है, एक लाइव वातावरण पर। हालाँकि, आपको वास्तव में पहले से ही एक उद्धार डिस्क तैयार करना चाहिए।

और प्रेम के भगवान के लिए, पहले बैकअप बनाएं!

![btrfs-init-rootfs](https://user-images.githubusercontent.com/1125541/94771567-231f9600-037d-11eb-8032-50d2b5873f36.png)

## esoteric/clone-github-repos.php

एक उपयोगकर्ता या संगठन की सभी GitHub रिपोजिटरी को स्वचालित रूप से डाउनलोड करता है।

## बैश फ्रेमवर्क

### is_root

जब स्टैंडअलोन रन किया जाता है, तो यह या तो "रूट के रूप में चल रहा है" या "रूट के रूप में नहीं चल रहा है" प्रतिध्वनित करेगा।

जब फ़ंक्शन के रूप में कॉल किया जाता है, यह या तो `true` या `false` लौटाएगा।

## wait_until_mouse_or_keyboard_event

निष्पादन को तब तक अवरुद्ध करता है जब तक कि एक कुंजी न दबाई जाए, माउस न हिलाया जाए, या माउस बटन
कहीं भी दबाया जाए, विंडो फ़ोकस के अनियमित रूप से।

यह निम्नलिखित में से एक प्रतिध्वनित करेगा: KEYBOARD_KEY, MOUSE_CLICKED, या MOUSE_MOVED।

या तो स्टैंडअलोन रूप में या फ़ंक्शन के रूप में चलाया जा सकता है।

# लाइसेंस

यह परियोजना [क्रिएटिव कॉमन्स एट्रिब्यूशन लाइसेंस v4.0 इंटरनेशनल](LICENSE.cc-by.md) के तहत लाइसेंस प्राप्त है।

![CC.by License Summary](https://user-images.githubusercontent.com/1125541/93617603-cd6de580-f99b-11ea-9da4-f79c168c97df.png)

# लेखक के बारे में

[थियोडोर आर. स्मिथ](https://www.phpexperts.pro/]) <theodore@phpexperts.pro> 
GPG फिंगरप्रिंट: 4BF8 2613 1C34 87AC D28F  2AD8 EB24 A91D D612 5690 
CEO: PHP Experts, Inc.
