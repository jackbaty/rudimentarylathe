- Does the fact that I've been **blogging since 2000** mean that I simply haven't evolved?
- I'm now importing the [Better Roam Research](https://fabriziorinaldi.com/better-roam-research/) **CSS theme** for [[Roam]] because I get fixes and updates automatically that way
- Created a new page, [[Where to find me online]]. The fun part is embedding sections of it elsewhere in Roam, such as in [[💎 Start Here]]. It really is great being able to just embed blocks all over the place.
- I am distracting myself from politics by **consolidating my online stuff**.
    - I have **domains registered at several registrars**. Most of them have been at [[IWantMyName]] so I'm bringing __all__ of them there.
    - Static websites are in S3, Google Cloud, EC2 instances, etc. They're all **moving to one droplet** at [[Digital Ocean]]
    - My DNS is managed at both [[IWantMyName]] and [[Route53]]. I'm moving the Route53 zones to [[Digital Ocean]], since they all involve hosting. Not sure if I should just combine them all at IWantMyName or DO. Thinking about moving all zones into DO, whether hosting-related or not and just **let IWantMyName to serve as registrar only**.
        - [[Narrator]]: "He did"
    - OK, DNS for [[baty.net]] and [[copingmechanism.com]] are now using [[Digital Ocean]] name servers. Hope I didn't break anything too badly
    - I should really learn [[Ansible]] for this.
        - [Ansible security playbook for your VPS (part 1) | Serverwise](https://blog.ssdnodes.com/blog/secure-ansible-playbook/)
        - [How to Install Ansible and Automate Your Ubuntu Server Setup - SpinupWP](https://spinupwp.com/automating-server-setup-ansible/)
- Hilarious
    - [Blogging vs. blog setups - Rakhim.org](https://rakhim.org/honestly-undefined/19/) #Blogging
        - So very close to home. And true!
        - Via [@baldur](https://micro.blog/baldur)
- Added www subdomain to the [[copingmechanism.com]] [[Ghost]] config
    - ```shell
sudo -i -u ghost-mgr
ghost config url https://www.copingmechanism.com
ghost setup nginx ssl
ghost config url https://copingmechanism.com
exit
# Added this redirect to nginx config
# return 301 https://copingmechanism.com$request_uri;
sudo vi /etc/nginx/sites-enabled/www.copingmechanism.com-ssl.conf
sudo nginx -t
sudo nginx -s reload
```
- [[baty.net]] is now running on my [[Digital Ocean]] "static" instance via [[Caddy Server]] instead of [[Netlify]]. Netlify rhymes with simplify and that's what I'm doing so I got rid of Netlify wait wat?
