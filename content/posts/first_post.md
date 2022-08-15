+++
title = "My first post: how to make posts and academic websites using Hugo and the academic theme"
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


### Academic theme {#academic-theme}

The theme focuses on academic settings like portfolios, cvs, resumes, conference websites, etc. The [project](https://wowchemy.com/docs/) is well documented and provides good support for academic needs. For example, the author of the theme provides a tool called [Hugo Academic CLI](https://pypi.org/project/academic/) which can generate publication entries from a bibtex file.


### [Ox-hugo](https://ox-hugo.scripter.co) (optional) {#ox-hugo--optional}

If you're an emacs user which likes org-mode, the ox-hugo package comes handy to organize your posts and use org instead of markdown.


## Basic customization {#basic-customization}

It can definitely take some time to go through the documentation to figure out where to make the necessary changes to have a working/ready-to-publish personal website. The following is a list of the places a user might be interested in checking for the latter:


### config/_default/menus.yaml: {#config-default-menus-dot-yaml}


#### Navigation menu {#navigation-menu}


#### Add the option \`canonifyURLS: true\` otherwise the page header doesn't link to the right home page. {#add-the-option-canonifyurls-true-otherwise-the-page-header-doesn-t-link-to-the-right-home-page-dot}


### config/_default/params.yaml: {#config-default-params-dot-yaml}


#### footer {#footer}


#### appearance section (where to store themes) {#appearance-section--where-to-store-themes}


#### footer section (replace Me by Author's name) {#footer-section--replace-me-by-author-s-name}


### TODO: add more files to quickly customize, like icons, personal information, baseURL, pictures etc {#todo-add-more-files-to-quickly-customize-like-icons-personal-information-baseurl-pictures-etc}


## My workflow {#my-workflow}


### Add a publication {#add-a-publication}

TODO: Describe this [Documentation](https://wowchemy.com/docs/content/publications/) briefly. Mostly about the fact on how to add
the pdf matching the folder's name.


### Create a post {#create-a-post}


### My makefile {#my-makefile}