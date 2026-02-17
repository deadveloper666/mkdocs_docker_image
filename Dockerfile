FROM danipenaperez/mkdocs:v1.0.4

LABEL version="1.0"
LABEL description="Mkdocs Customization Image"
LABEL author="Daniel Peña Perez | danipenaperez@gmail.com"

RUN pip install --upgrade pip
RUN apk add --no-cache \
    build-base cairo-dev cairo cairo-tools \
    # pillow dependencies
    jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev

RUN pip install "flask==1.0.1" "CairoSVG==2.1.3"
RUN pip install mkdocs-bootswatch
RUN pip install mkdocs-dracula-theme
RUN pip install mkdocs-swan
RUN pip install pygments
RUN pip install mkdocs-gitbook
RUN pip install mkdocs-bootstrap4
RUN pip install mkdocs-charts-plugin
RUN pip install mkdocs-meta-descriptions-plugin
RUN pip install mkdocs-exclude
RUN pip install mkdocs-git-authors-plugin
RUN pip install mkdocs-mermaid2-plugin
RUN pip install neoteroi-mkdocs
RUN pip install mkdocs-macros-plugin
RUN pip install mkdocs-include
RUN pip install mkdocs-exclude-search
RUN pip install mkdocs-static-i18n

