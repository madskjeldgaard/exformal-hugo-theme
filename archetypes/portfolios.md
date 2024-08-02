---
title: "{{ replace .Name "-" " " | title }}"
year: {{ now.Format "2006" }}
categories: ["yourcategory"]
date: {{ .Date }}
draft: true
toc: false
cover: "/img/covers/default.jpg"
description: "Description of the portfolio item."
---

Description of the portfolio item goes here.

[Click here to hear more](https://example.com)
