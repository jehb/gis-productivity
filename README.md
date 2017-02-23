# GIS Productivity Hacks

This repository is for keeping track of various things related to [my talk](https://event.crowdcompass.com/ncgis2017/activity/rqq4MnEiRT) at the [NC GIS Conference](http://www.ncgisconference.com/) on February 23, 2017 in Raleigh, NC.

The talk was originally pitched as a modification to the talk given by me and Jen Wike Huger at All Things Open in 2016, entitled [Open Source Productivity Hacks](https://github.com/jehb/productivity-hacks). It has since diverged pretty significantly from that presentation, but I'm linking it here in case you'd like to see those slides or have a follow-up that might be better answered there.

## Work in progress

This is not a finished product. It never will be. There will always be new things to add and update. Here are some things I hope to do before I present this:

- [ ] Create a jupyter notebook script to download the demo data.
- [ ] Create vagrant slides.
- [ ] Think about what NodeRed examples to include.
- [ ] Is there an Inkscape automation article to include?
- [ ] Look through to see if there are any other conversion tools to list.
- [ ] Go through the full list of listicles, alternatives, etc. on Opensource.com for related content.
- [ ] Go through my Chrome bookmarks and add anything here which might be related.
- [ ] Go through everything flagged in Feedly for this talk.
- [ ] Go through FOSS4G slide deck list.
- [ ] Create Docker slides, and pick which dockerfiles to use

## The contents

* README.md: You're reading it now. This is an outline of my talk.

## The premise

I'm a weekend warrior when it comes to GIS. I spend a lot of time in my day job doing analytics and automation, but most of it doesn't have a geospatial component. My GIS work is primarily on a volunteer basis with local groups I volunteer with. So I need to be able to get up and running on projects pretty quickly. It's also important to be able to figure out what I did several weeks ago, since I'm only able to work on projects sporadically. So I try, as much as feasible, to:

* Define all of the settings, processes, and the infrastructure itself in code.
* Document well, as I go, and keep a good system for organizing my work.
* Save time by trying to think about ways to make solutions replicable.
* Use version control and good backups, because I probably will forget why I did something.

## Tools I use

I don't use Windows, so no, I don't use ArcGIS. I did use Esri products a great deal in grad school, but haven't since. I do most of my work in [QGIS](http://www.qgis.org/en/site/), and occasionally in [GRASS](https://grass.osgeo.org/). There are a lot of people who know a lot more about QGIS and GRASS than I do, so I'll defer to them. This is not a talk about QGIS or GRASS.

I do, however, use a lot of other open source tools in my GIS workflow, and I thought I'd share some of them with you. Here's a partial list:

* Vim (substitute a text editor of your choosing here)
* Docker
* Vagrant
* ImageMagick/GraphicsMagick, PIL, ffmpeg (command line image manipulation)
* Command line TSV/CSV manipulation tools
* Node-RED
* Jupyter notebooks
* A chatbot (Because I sometimes work with other people, but mostly because it's mildly entertaining).

## Pick a sample spot

One of the things I picked up when I was in grad school for learning new tools is to have one data set you're intimately familiar with, so you can quickly try out new tools, see how they work, and if they're for you. If you went through a MS or PhD program, or if you're the data manager for a particular geographic region, this will come easy to you.

I do a lot of urban planning advocacy, so a dataset I'm prety familiar with is my own neighbhorhood in Chapel Hill. 

* http://www.townofchapelhill.org/town-hall/departments-services/planning-and-sustainability/gis-analytics/download-gis-data

## Resources

* [Vagrant Getting Started Guide](https://www.vagrantup.com/docs/getting-started/)
* [Leaflet Quick Start Guide](http://leafletjs.com/examples/quick-start/)
* [Jupyter Notebook Documentation](https://jupyter.readthedocs.io/en/latest/index.html)
* [Jupyter minimal-notebook Dockerfile](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook)
* [Command-line tools for data analysis in Linux](https://opensource.com/article/17/2/command-line-tools-data-analysis-linux)
* [Useful Unix commands for data science](http://www.gregreda.com/2013/07/15/unix-commands-for-data-science/)
* [Working with CSVs on the Command Line](http://bconnelly.net/working-with-csvs-on-the-command-line/)
* https://github.com/ncsu-geoforall-lab
* A good example of a GIS Dockerfile: https://github.com/wenzeslaus/geospatial-modeling-course-jupyter/blob/master/Dockerfile

### Exploring data with SQLite3

* Basic joins: https://www.tutorialspoint.com/sqlite/sqlite_using_joins.htm
* Group by: http://www.dofactory.com/sql/group-by
* Importing a TSV: https://stackoverflow.com/questions/26065872/how-to-import-a-tsv-file-with-sqlite3

### Working with data at the command line

* [Adventures in /usr/bin and the likes](https://ablagoev.github.io/linux/adventures/commands/2017/02/19/adventures-in-usr-bin.html)
* http://bconnelly.net/working-with-csvs-on-the-command-line/
* http://www.drbunsen.org/explorations-in-unix/
* Advanced tools for data science at the command line: http://jeroenjanssens.com/2013/09/19/seven-command-line-tools-for-data-science.html

### QGIS Command Line Options

* https://docs.qgis.org/2.2/en/docs/user_manual/introduction/getting_started.html

### Working with Vagrant

* Creating a base box: https://www.vagrantup.com/docs/boxes/base.html

### Image manipulation with Python

* [Using Python to find corrupted images](https://opensource.com/article/17/2/python-tricks-artists)
* [Getting started with Python scripting in Scribus](https://opensource.com/life/16/10/python-scripting-scribus)
