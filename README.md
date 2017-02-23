# GIS Productivity Hacks

_Note: If you missed this talk earlier today from Walk Gurley on QGIS, TopoJSON, and D3, go check out out: [go.ncsu.edu/ncgis2017] -- it's another great workflow for doing GIS with open source tools._

This repository is for keeping track of various things related to [my talk](https://event.crowdcompass.com/ncgis2017/activity/rqq4MnEiRT) at the [NC GIS Conference](http://www.ncgisconference.com/) on February 23, 2017 in Raleigh, NC.

The talk was originally pitched as a modification to the talk given by me and Jen Wike Huger at All Things Open in 2016, entitled [Open Source Productivity Hacks](https://github.com/jehb/productivity-hacks). It has since diverged pretty significantly from that presentation, but I'm linking it here in case you'd like to see those slides or have a follow-up that might be better answered there.

## See something missing?

Great, send me a pull request! I'd love to make this presentation better. I'd also like you to be able to use this to 

## The contents

* [ ] README.md: You're reading it now. This is an outline of my talk.
* [ ] LICENSE: Anything here by me is MIT.
* [ ] Vagrantfile: Launch a machine instance to try some stuff out.
* [ ] install.sh: Configure that vagrant machine image.
* [ ] ch_vectorgisadminplaces.csv: Some downloaded sample data from the Chapel Hill Open Data portal, in case I don't have connectivity when I present this.
* [ ] node-red-sample-flow.json: Let's show off Node-RED.
* [ ] download_sample_data.ipynb: It's a sample Python Jupyter notebook.
* [ ] dir: slides see also: [Open Source Productivity Hacks](https://github.com/jehb/productivity-hacks)

## The premise

I'm a weekend warrior when it comes to GIS. I spend a lot of time in my day job doing analytics and automation, but most of it doesn't have a geospatial component. My GIS work is primarily on a volunteer basis with local groups I volunteer with. So I need to be able to get up and running on projects pretty quickly. It's also important to be able to figure out what I did several weeks ago, since I'm only able to work on projects sporadically. So I try, as much as feasible, to:

* Define all of the settings, processes, and the infrastructure itself in code.
* Document well, as I go, and keep a good system for organizing my work.
* Save time by trying to think about ways to make solutions replicable.
* Use version control and good backups, because I probably will forget why I did something.

## Tools I use

I don't use Windows, so no, I don't use ArcGIS. I did use Esri products a great deal in grad school, but haven't since. I do most of my work in [QGIS](http://www.qgis.org/en/site/), and occasionally in [GRASS](https://grass.osgeo.org/), and I'm also a fan of the [GDAL](http://www.gdal.org/) toolkit. There are a lot of people who know a lot more about QGIS, GDAL, and GRASS than I do, so I'll defer to them. This is not a talk about those tools.

I do, however, use a lot of other open source tools in my GIS workflow that aren't in and of themselves specifically for GIS, and I thought I'd share some of them with you:

Things I'm going to talk about today:

* Vagrant
* Docker
* Jupyter notebooks
* Node-RED
* Command line data manipulation tools

Things I'm not going to talk about that I wish I had time to:

* Command line image manipulation: ImageMagick/GraphicsMagick, PIL, ffmpeg (I use these a lot)
* Becoming a ninja at a text editor of your choosing (I like Vim).
* Chatbots (Because I sometimes work with other people, but mostly because it's mildly entertaining).
* Stats tools and machine learning toolkits (Because there are some really exciting things going on here).
* Visualization toolkits, augmented reality, drones, 3D modeling and printing, IoT, big data tools, Everything-as-a-Service and cloud technology, etc, etc (It's a *really* exciting time to be in GIS).

## Sample data

One of the things I picked up when I was in grad school for learning new tools is to have one data set you're intimately familiar with, so you can quickly try out new tools, see how they work, and if they're for you. If you went through a MS or PhD program, or if you're the data manager for a particular geographic region, this will come easy to you.

I do a lot of urban planning advocacy, so a dataset I'm prety familiar with is my own neighbhorhood in Chapel Hill. 

* [Town of Chapel Hill GIS](http://www.townofchapelhill.org/town-hall/departments-services/planning-and-sustainability/gis-analytics/download-gis-data)
* [Chapel Hill Open Data Portal](https://www.chapelhillopendata.org/page/home1/)
* [NC Voter Data](https://s3.amazonaws.com/dl.ncsbe.gov/data/) - lacking a better option, I use this a lot for address-level demographics, and person/place matching.

## What I want to show you:

* Why does repeatability matter?

### Vagrant: launch vagrant w/ --provider virtualbox
* What is vagrant? What is virtualization?
* Run "any" platform, from any platform, repeatably.
* Show the Vagrantfile, the .sh
* What is a configuration management tool?

### Docker:
* What is Docker? Why Docker?
* Great for immutable infrastructure & stateless applications.
* Run "any" Linux on "any" Linux"
* At scale, needs orchestration tools: I'm partial to Kubernetes
* Run this command: docker run -it --rm -p 8888:8888 jupyter/minimal-notebook
* Look at the source: curl -O https://raw.githubusercontent.com/jupyter/docker-stacks/master/minimal-notebook/Dockerfile
* Wasn't that fast?

### Jupyter Notebook:
* Documentation and code together, great for learning, great for sharing.
* Show downloading data:

### Command line data manipulation
* Data is from here: https://www.chapelhillopendata.org/explore/dataset/ch_vectorgisadminplaces/
* head and tail - show part of a data file
  * $ tail -n 3 ch_vectorgisadminplaces.csv
  * $ head -n 2 ch_vectorgisadminplaces.csv
* wc - get a word count
  * $ wc -l ch_vectorgisadminplaces.csv
* grep - find anything, anywhere. Regular expressions!
  * $ grep -i "library" ch_vectorgisadminplaces.csv
* tr - translate any character to another character
  * $ grep -i "school" ch_vectorgisadminplaces.csv | tr ',' '\t' > schools.tsv
* sort - organize any tablular data by any column
  * $ sort -nr -t$'\t' -k9 schools.tsv
* sed - stream editor, replace anything with anything
  * $ sed '1 d' ch_vectorgisadminplaces.csv > ch_no_headers.csv 
* cut - slicing by column
  * $ cut -d',' -f3 ch_vectorgisadminplaces.csv > places.txt
* uniq - find duplicates, and more
  * $ sort places.txt | uniq -c > places_uniq.txt
* awk - more find and replace, but very powerful, with find and replace.
  * $ awk -F "," '{print $3","$(NF-1)","$NF}' ch_vectorgisadminplaces.csv > places_x_y.csv

* if latlong is good enough for your project, all of the data manipulation we just showed can work for that too! Requires: some mathematical enthusiasm.
* We're not stuck with just tabular data. For images, there's ffmpeg, PIL, ImageMagick (GraphicsMagick), Scribus, etc, to look at on top of GIS suites.

### Node-RED
* Connect any data source to any data source with some processing in between.
* Built on NodeJS, so it's helpful to known JavaScript, but not essential.
* Build a web app, a twitter bot, or a robot using a Raspberry Pi, all from one drag-drop platform.
* Can use any underlying resources or programs on your machine or elsewhere in the world.

## Resources

* [Vagrant Getting Started Guide](https://www.vagrantup.com/docs/getting-started/)
* [Leaflet Quick Start Guide](http://leafletjs.com/examples/quick-start/)
* [Jupyter Notebook Documentation](https://jupyter.readthedocs.io/en/latest/index.html)
* [Jupyter minimal-notebook Dockerfile](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook)
* https://github.com/ncsu-geoforall-lab
* A good example of a GIS Dockerfile: https://github.com/wenzeslaus/geospatial-modeling-course-jupyter/blob/master/Dockerfile

### Working with data at the command line

* [Adventures in /usr/bin and the likes](https://ablagoev.github.io/linux/adventures/commands/2017/02/19/adventures-in-usr-bin.html)
* [Working with CSVs on the Command Line](http://bconnelly.net/working-with-csvs-on-the-command-line/)
* http://www.drbunsen.org/explorations-in-unix/
* [Advanced tools for data science at the command line](http://jeroenjanssens.com/2013/09/19/seven-command-line-tools-for-data-science.html)
* [Command-line tools for data analysis in Linux](https://opensource.com/article/17/2/command-line-tools-data-analysis-linux)
* [Useful Unix commands for data science](http://www.gregreda.com/2013/07/15/unix-commands-for-data-science/)

### Image manipulation with Python

* [Using Python to find corrupted images](https://opensource.com/article/17/2/python-tricks-artists)
* [Getting started with Python scripting in Scribus](https://opensource.com/life/16/10/python-scripting-scribus)
