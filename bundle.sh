#!/usr/bin/env bash

set -e
# Download WKHTMLTO_PDF so it can be distributed with this package
WKHTML2PDF_VERSION='0.12.4'

wget "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/${WKHTML2PDF_VERSION}/wkhtmltox-${WKHTML2PDF_VERSION}_linux-generic-amd64.tar.xz"
tar -xJf "wkhtmltox-${WKHTML2PDF_VERSION}_linux-generic-amd64.tar.xz"
rm wkhtmltox/bin/wkhtmltoimage

rm "wkhtmltox-${WKHTML2PDF_VERSION}_linux-generic-amd64.tar.xz"

tar -czf wkhtmltox.tar.gz wkhtmltox/

rm -rf wkhtmltox