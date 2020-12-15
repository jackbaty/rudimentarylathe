- ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fjackbaty%2FzSXG3s5Efl.png?alt=media&token=425a914b-57e4-4898-8d71-1f749960f736)
- Things I can't seem to quit, even though I might be better off without them
    - [[Emacs]]
    - [[Roam]]
    - [[Film]]
- I need a distraction today. I think I'll move my todo system back into [[Org mode]] from [[OmniFocus]]. No reason, just need something else to think about to get me through the day.
    - Narrator: He did not.
- Fixed a startup error in [[Emacs]] caused by something in my [[Doom Emacs]] config lazy loading [[Org mode]].
    - `file-missing Opening directory No such file or directory /Users/jbaty/Dropbox/notes/org/roam)`
    - That's not where my org-roam-directory was set, so somehow Doom was overriding it. So, I moved the directory configuration to the top of config.org and that stuck. I still don't understand, because having the config later in the file should stick. Oh well.
        - This is now near the top of the config...
        - ```common lisp
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/notes/org/")
(setq org-roam-directory "~/Dropbox/notes/org-roam"
      org-roam-index-file "~/Dropbox/notes/org-roam/index.org")```
    - 
- The [[Medium]] home page remains a nightmare of clickbait and listicles. It's a shame, because if you can find it, there's some good writing there.
- [[Burgeoning thought]]: Gatekeepers are necessary
- I thought I'd move away from my [[Digital Print Archive]] to just "burning" RAW images right next to the originals, but that just clutters things up, so back to the DPA it is.
- Airtable tier restrictions are so weird
    - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fjackbaty%2F8okYn63jXp.jpg?alt=media&token=eefc0d41-cefd-4cec-971d-310b9c8a6c2b)
- Maybe this for the [[Oculus Quest]] [Trover Saves the Universe on Oculus Quest | Oculus](https://www.oculus.com/experiences/quest/2718107161580827/)
    - Or maybe [Red Matter for PlayStation 4 Reviews - Metacritic](https://www.metacritic.com/game/playstation-4/red-matter)
    - 
