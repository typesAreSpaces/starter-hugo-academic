+++
title = "My first post: how to make posts and academic websites using Hugo with the academic theme"
author = ["Jose Abel Castellanos Joo"]
date = 2022-08-13
draft = false
+++

While building this website, I thought it would be convenient to take some notes
of the process so I can recall the necessary steps if I have to start from scratch again. This website was \`rendered\` using the [hugo](https://gohugo.io/) static website generator and a special theme called [academic](https://academic-demo.netlify.app).

Most of the help I got comes from [this post](http://www.statslab.cam.ac.uk/~qz280/post/migrating/); it does a pretty good job describing some technical details of the hugo framework and its organization. Thus, the intention of this post is to provide and overview and quick configuration tips which aren't covered by the aforementioned post.


## Tools {#tools}


### Hugo {#hugo}

This static generator is used for building the main components of the website. Its main features are:

-   Editing using markdown: It uses the go programming language to 'compile' html files from markdown files.
-   'Capable Templating': I understand this as convenient code which enables users to programatically structure websites using special variables within markdown.
-   Extensive selection of themes: As I already mentioned before, we will particularly focus on the academic theme.

Here are some installation options for some operating systems:

-   macOs
    ```bash
    brew install hugo
    ```

-   Windows
    ```bash
    choco install hugo --confirm
    ```

-   Debian/Ubuntu
    ```bash
    sudo apt-get install hugo
    ```

-   Arch Linux
    ```bash
    sudo pacman -Syu hugo
    ```

-   Fedora, Red Hat and CentOS
    ```bash
    sudo dnf install hugo
    ```

-   openSUSE
    ```bash
    sudo zypper install hugo
    ```

-   Solus
    ```bash
    sudo eopkg install hugo
    ```

-   OpenBSD
    ```bash
    doas pkg_add hugo
    ```


### Academic theme {#academic-theme}

The theme focuses on academic settings like portfolios, cvs, resumes, conference websites, etc. The [project](https://wowchemy.com/docs/) is well documented and provides good support for academic needs. For example, the author of the theme provides a tool called [Hugo Academic CLI](https://pypi.org/project/academic/) which can generate publication entries from a bibtex file.

In order to install the theme:

1.  Select the \`Academic Resum\\'e\` from <https://wowchemy.com/hugo-themes/>
2.  Clic on \`Start with Academic Resum\\'e\`
3.  Choose either Github or Gitlab to fork the content of the theme into a git repository
4.  Finish the process by clicking on the 'Save &amp; Deploy' button.

The latter will fork the content of the theme from Netlify. The latter will create a website hosted by Netlify. If you already have a domain, e.g. a personal website or some url from your university, I'd recommed just to keep track of the content from either Github or Gitlab.

<a id="figure--fig:academic-theme-content"></a>

{{< figure src="/ox-hugo/academic_theme_content.png" caption="<span class=\"figure-number\">Figure 1: </span>If you chose the default name, the following repo should appear in your account as well" >}}


### [Ox-hugo](https://ox-hugo.scripter.co) (optional) {#ox-hugo--optional}

If you're an emacs user who likes org-mode, the ox-hugo package comes handy to organize your posts and use org instead of markdown.

Add the following to your init.el configuration file to obtain hugo:

```emacs-lisp
(with-eval-after-load 'ox
  (require 'ox-hugo))
```

If you use [use-package](https://github.com/jwiegley/use-package), use this instead:

```emacs-lisp
(use-package ox-hugo
  :ensure t   ;Auto-install the package from Melpa
  :pin melpa  ;`package-archives' should already have ("melpa" . "https://melpa.org/packages/")
  :after ox)
```


#### <span class="org-todo todo TODO">TODO</span> Add information about installation {#add-information-about-installation}


#### <span class="org-todo todo TODO">TODO</span> Add information basic execution {#add-information-basic-execution}


## <span class="org-todo todo TODO">TODO</span> Basic customization {#basic-customization}

It can definitely take some time to go through the documentation to figure out where to make the necessary changes to have a working/ready-to-publish personal website. The following is a list of the places a user might be interested in checking for the latter:


### menus.yaml: {#menus-dot-yaml}


#### Reason {#reason}

TODO Explain why.


#### Location {#location}

config/_default/menus.yaml


#### Settings {#settings}

-   Navigation menu
-   Add the option \`canonifyURLS: true\` otherwise the page header doesn't link to the right home page.


### params.yaml: {#params-dot-yaml}


#### Reason {#reason}

TODO Explain why.


#### Location {#location}

config/_default/params.yaml


#### Settings {#settings}

-   footer section (replace Me by Author's name)
-   appeareance section (where to store themes)


### <span class="org-todo todo TODO">TODO</span> add more files to quickly customize, like icons, personal information, baseURL, pictures etc {#add-more-files-to-quickly-customize-like-icons-personal-information-baseurl-pictures-etc}


## <span class="org-todo todo TODO">TODO</span> My workflow {#my-workflow}


### Add a publication {#add-a-publication}

TODO: Describe this [Documentation](https://wowchemy.com/docs/content/publications/) briefly. Mostly about the fact on how to add
the pdf matching the folder's name.


### Create a post {#create-a-post}


### Suggested Makefile to automate several tasks {#suggested-makefile-to-automate-several-tasks}