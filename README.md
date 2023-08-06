# ⚪ Files

B.

___Our dear dotfiles, especially for neovim, zsh and tmux___

>The [`Qtile`](https://qtile.org/) configuration is not completed, so you need to struggle yourself if you want to have a fairly pretty environment on your machine. See [the story](#the-story) if you want to know more why did that happen.

---

## Neovim
I use [NvChad](https://github.com/NvChad/NvChad) for a base neovim configuration, and putting my custom configurations on top of that.

### Installation
[Install](https://github.com/nodesource/distributions#installation-instructions) the latest LTS version of `NodeJS`.

> As I was using `Ubuntu 22.04 LTS` when I did this configuration, I strived so much to make the newer `nodejs` packages run with older version of the nodejs installed by `apt install node` unawarely, then I learned that's what LTS means.

Remember backing up our `~/.config/nvim` folder : )

```shell
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
After that put the custom configuration directory in this repository inside our `~/.config/nvim/lua` directory, and we're __ready 2 go__!

Custom configuration is inspired by:
- [DreamsOfCode](https://www.youtube.com/watch?v=Mtgo-nP_r8Y&list=PL05iK6gnYad1sb4iQyqsim_Jc_peZdNXf)
- [ThePrimeagen](https://www.youtube.com/watch?v=w7i4amO_zaE), source code [here](https://github.com/ThePrimeagen/init.lua)
- [chris@machine](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)

## Zsh
I copied the
- prompt from [zap-prompt](https://github.com/zap-zsh/zap-prompt),
- `vi mode` from [Brodie Robertson](https://www.youtube.com/watch?v=hIJh-KlQ7io), source code [here](https://github.com/BrodieRobertson/dotfiles/blob/3c87798b8af81acb6ed3f746326ad62dc285debe/.zshrc#L25)
- Tab completion, shell colors and some aliases from `Kali Linux`'s `.zshrc`

and configured all these with my own manner : )

## Tmux
Highly inspired by [DreamsofCode](https://www.youtube.com/watch?v=DzNmUNvnB04).<br>
After putting the configuration file to `~/.config/tmux`, we can
- install the plugins by typing `prefix + I` 
    - in this case `CTRL+a + I`
- update them by typing `prefix + U`
    - in this case `CTRL+a + U`

---

## Other dotfiles
We can install them by simply putting them to our corresponding `.config` directory.

### The story
>After using `Arch` with `Xfce` for 1.5 years, I decided to have a fancy for using a tiling window manager. Because _"if you really are using arch, you should use it with a tiling wm"_,  right?<br>
As I was more into `Python`, and didn't want throw myself into blackholes (like `dwm`), I started configuring Qtile. Spending time for a while on ricing my new `arch linux experience with a tiling window manager` made me realize that ___tryna customize a window manager was an enormous obsession area if you're "a bit" perfectionist___. Though I started to think that I was wasting my time so much. Eventually, after using Arch for almost 2 years, I moved

from `Arch Linux + Qtile` <br>
to `Ubuntu 22.04 LTS + KDE`

`🤣😂😅😄😀🙂😐😶😳🤯😤😡`

##### YES, I ADMIT THAT IT WAS A RADICAL HOPPING

Nevertheless I'm relaxed and more happier than I was, which is definitely more important. I don't have concerns about "how can I say people that `I use arch btw` from now on" because I wasn't able to say this that much in the past as I didn't have IT nerd friends, (really).

Looking at the bright side, E. I'm still using vim (neovim), I didn't switch to VSCode (yet). Well, we'll see what future brings to us, and İnş be thankful, right? :) Koçum beniim, aslanıımmmm

Till then, take care of yourself bil afiya, and A.'a E. O. :)

<br>

___humbly written by f4T1H___