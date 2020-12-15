- There are many reasons one shouldn't use [[Instagram]], but the real reason I don't use it is because I don't live on my phone. Give me a decent desktop posting experience and it might be different.
- In [[Emacs]] evil mode wasn't properly handling j & k motion commands properly. I use `visual-line-mode` with [[Markdown]] and movements were jumping actual not visible lines. The relevant setting is `evil-respect-visual-line-mode` but I learned that it had to be set __before__ loading Evil. How to do that in [[Doom Emacs]]? Use `use-package-hook!`, like so...
    - ```clojure
(use-package-hook! evil
  :pre-init
  (setq evil-respect-visual-line-mode t) ;; sane j and k behavior
  t)```
    - I wrote about it: [Respecting visual lines in Doom Emacs - Jack Baty's weblog](http://localhost:1313/2020/respecting-visual-lines-in-doom-emacs/)
- Spending some time this morning learning the ins and outs of [[Treemacs]]. For some reason, in other editors such as [[BBEdit]] or [[VS Code]] I live in the file tree, but in [[Emacs]] it's never become a natural part of my flow.
- Doing all this in "public" feels perfectly normal to me. I wonder if it should, though.
- I might be the only person on the planet who didn't enjoy "Black Panther" but Chadwick Boseman was terrific and his death is heart-breaking.
- So it looks like I have several "blogs" again.
    - https://copingmechanism.com
    - https://baty.net
    - https://roamresearch.com/#/app/jackbaty
- An [[SEO]] partial for [[Hugo]]: [doncabreraphone/victorhugo: The most popular search engine optimization plug-in for HUGO (the world's fastest static site generator). Victor Hugo helps you write good SEO content for your blog, the easy way.](https://github.com/doncabreraphone/victorhugo)
    - OMG you see what happens when SEO becomes important? Anyway, I might try it.
- Trying [[Discourse]] as an embeddable comment system for [[baty.net]]
    - Using [[Cloudron]]. Cloudron sends a local account password reset messages so I had to change that using the following:
    - Enter the terminal via cloudron CP
    - ```clojure
sudo -E -u cloudron bundle exec script/rails console
irb(main):001:0> u = User.find_by_username("root")
irb(main):002:0> u.email = "YOUR_NEW_EMAIL_ADDRESS"
irb(main):003:0> u.email_tokens.create(email: u.email)
irb(main):004:0> u.activate
irb(main):005:0> u.save!```
    - Nah, that was going to be a struggle.
- Integrated [[Commento]] comments into [[baty.net]]
    - Had to install it locally via Docker so it would show up in my local Hugo build
    - This was very helpful: [Add comments with Commento](https://www.jamify.org/2020/05/12/add-comments-with-commento/)
    - Probably this: `cd ~/Dropbox/dev/commento && docker-compose up`
- [Primer on Roam Research: Build Your Roam Graph from Scratch | appsntips](https://www.appsntips.com/primer-roam-research-build-roam-graph/)
- [How to configure Discourse on Amazon Web services (AWS) - Axel Fernandes's blog](https://www.axelfernandes.com/how-to-configure-discourse-on-amazon-web-services-aws) #Discourse #AWS 
- I've been thinking a bit about [[Plaintext]] [[Email]]. I've been an advocate my entire online life. I'm beginning to change my mind. Need to keep thinking about it, though.
- Everyone loves to pile on against "gatekeepers" but they exist for a reason. Consider whether that reason might be valid before clamoring for their dismissal.
- If I visit your website, I can absolutely guarantee you that I'm not there to sign up for your newsletter so stop asking.
- By all means say something nice about the recently deceased. But don't make it a contest about how profoundly you can talk about it.
- Oh man, don't make me want to write on Medium again :)
    - https://twitter.com/anildash/status/1299731316804669440
    - Who knows though, maybe they'll turn it around.
- 
