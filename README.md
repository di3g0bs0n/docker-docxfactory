# docker-docxfactory

Ubuntu:18.04 based docker image. Include docxfactory libraries and python3 wrappers.


[DocxFactory](https://github.com/DocxFactory/DocxFactory) is a free, cross platform C/C++ library with C#, Java, Python, Progress 4GL wrappers and command line tools for generating (Microsoft Word .DOCX) files (also called Open XML).

# How to install docxfactory docker image?

There are two options to install the image. The simplest is to download it from the Docker repository:

```bash
docker pull diegobson/docxfactory
```

The other way is to clone this repository and build the image with the following command (located in the root of the repository):


```bash
docker image build -t diegobson/docxfactory .
```
