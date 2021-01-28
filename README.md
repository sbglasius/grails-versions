![Grails Versions](https://github.com/sbglasius/grails-versions/workflows/Grails%20Versions/badge.svg?branch=master)

Grails Versions
---
Adapted from Eric Helgeson who has archived his project.

Handy repo/script to compare fresh `create-app` versions of Grails 3 and up so you can see what changed.

Just compare across tags:
* <https://github.com/sbglasius/grails-versions/compare/3.1.7...3.1.8>
* <https://github.com/sbglasius/grails-versions/compare/3.2.0...3.3.12>
* <https://github.com/sbglasius/grails-versions/compare/3.3.9...4.0.3>
* <https://github.com/sbglasius/grails-versions/compare/4.0.0...4.0.6>
* <https://github.com/sbglasius/grails-versions/compare/4.0.0...5.0.0.M1>

From the git cli:

```bash
git diff 4.0.0..4.0.6
```

To add versions make pull-requests with new versions in versions.txt

A GitHub Action will rebuild the tags with all versions in versions.txt
