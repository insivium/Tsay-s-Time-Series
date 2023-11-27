# Install and load the rvest package if you haven't already
# install.packages("rvest")
library(rvest)
library(dplyr)
library(tidyverse)
# Assuming 'html_text' contains the HTML code you provided
html_text <- '<table>
<caption><span id="tab:unnamed-chunk-28">Table 8.5: </span>Football Heads</caption>
<thead>
<tr class="header">
<th align="left">group</th>
<th align="right">wdim</th>
<th align="right">circum</th>
<th align="right">fbeye</th>
<th align="right">eyehd</th>
<th align="right">earhd</th>
<th align="right">jaw</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">1</td>
<td align="right">13.5</td>
<td align="right">57.15</td>
<td align="right">19.50</td>
<td align="right">12.5</td>
<td align="right">14.0</td>
<td align="right">11.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">58.42</td>
<td align="right">21.00</td>
<td align="right">12.0</td>
<td align="right">16.0</td>
<td align="right">12.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">14.5</td>
<td align="right">55.88</td>
<td align="right">19.00</td>
<td align="right">10.0</td>
<td align="right">13.0</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">58.42</td>
<td align="right">20.00</td>
<td align="right">13.5</td>
<td align="right">15.0</td>
<td align="right">12.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">14.5</td>
<td align="right">58.42</td>
<td align="right">20.00</td>
<td align="right">13.0</td>
<td align="right">15.5</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">14.0</td>
<td align="right">60.96</td>
<td align="right">21.00</td>
<td align="right">12.0</td>
<td align="right">14.0</td>
<td align="right">13.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.0</td>
<td align="right">58.42</td>
<td align="right">19.50</td>
<td align="right">13.5</td>
<td align="right">15.5</td>
<td align="right">13.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.0</td>
<td align="right">58.42</td>
<td align="right">21.00</td>
<td align="right">13.0</td>
<td align="right">14.0</td>
<td align="right">13.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">59.69</td>
<td align="right">20.50</td>
<td align="right">13.5</td>
<td align="right">14.5</td>
<td align="right">12.5</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">59.69</td>
<td align="right">20.50</td>
<td align="right">13.0</td>
<td align="right">15.0</td>
<td align="right">13.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.0</td>
<td align="right">57.15</td>
<td align="right">19.00</td>
<td align="right">14.0</td>
<td align="right">14.5</td>
<td align="right">11.5</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">59.69</td>
<td align="right">21.00</td>
<td align="right">13.0</td>
<td align="right">16.0</td>
<td align="right">12.5</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">16.0</td>
<td align="right">57.15</td>
<td align="right">19.00</td>
<td align="right">14.0</td>
<td align="right">14.5</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">62.23</td>
<td align="right">21.50</td>
<td align="right">14.0</td>
<td align="right">16.0</td>
<td align="right">12.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">57.15</td>
<td align="right">19.50</td>
<td align="right">13.5</td>
<td align="right">15.0</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">14.0</td>
<td align="right">60.96</td>
<td align="right">20.00</td>
<td align="right">15.0</td>
<td align="right">15.0</td>
<td align="right">12.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">14.5</td>
<td align="right">58.42</td>
<td align="right">20.00</td>
<td align="right">12.0</td>
<td align="right">14.5</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.0</td>
<td align="right">56.90</td>
<td align="right">19.00</td>
<td align="right">13.0</td>
<td align="right">14.0</td>
<td align="right">12.5</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">59.69</td>
<td align="right">20.00</td>
<td align="right">12.5</td>
<td align="right">14.0</td>
<td align="right">12.5</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.0</td>
<td align="right">57.15</td>
<td align="right">19.50</td>
<td align="right">12.0</td>
<td align="right">14.0</td>
<td align="right">11.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.0</td>
<td align="right">56.90</td>
<td align="right">19.00</td>
<td align="right">12.0</td>
<td align="right">13.0</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">56.90</td>
<td align="right">19.50</td>
<td align="right">14.5</td>
<td align="right">14.5</td>
<td align="right">13.0</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">17.5</td>
<td align="right">63.50</td>
<td align="right">21.50</td>
<td align="right">14.0</td>
<td align="right">15.5</td>
<td align="right">13.5</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">57.15</td>
<td align="right">19.00</td>
<td align="right">13.0</td>
<td align="right">15.5</td>
<td align="right">12.5</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">60.96</td>
<td align="right">20.50</td>
<td align="right">12.0</td>
<td align="right">13.0</td>
<td align="right">12.5</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">60.96</td>
<td align="right">21.00</td>
<td align="right">14.5</td>
<td align="right">15.5</td>
<td align="right">12.5</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">63.50</td>
<td align="right">21.75</td>
<td align="right">14.5</td>
<td align="right">16.5</td>
<td align="right">13.5</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">14.5</td>
<td align="right">58.42</td>
<td align="right">20.50</td>
<td align="right">13.0</td>
<td align="right">16.0</td>
<td align="right">10.5</td>
</tr>
<tr class="odd">
<td align="left">1</td>
<td align="right">15.5</td>
<td align="right">56.90</td>
<td align="right">20.00</td>
<td align="right">13.5</td>
<td align="right">14.0</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">1</td>
<td align="right">16.0</td>
<td align="right">60.96</td>
<td align="right">20.00</td>
<td align="right">12.5</td>
<td align="right">14.5</td>
<td align="right">12.5</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.5</td>
<td align="right">59.69</td>
<td align="right">21.10</td>
<td align="right">10.3</td>
<td align="right">13.4</td>
<td align="right">12.4</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.4</td>
<td align="right">59.70</td>
<td align="right">20.00</td>
<td align="right">12.8</td>
<td align="right">14.5</td>
<td align="right">11.3</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.1</td>
<td align="right">59.70</td>
<td align="right">20.20</td>
<td align="right">11.4</td>
<td align="right">14.1</td>
<td align="right">12.1</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">14.3</td>
<td align="right">56.90</td>
<td align="right">18.90</td>
<td align="right">11.0</td>
<td align="right">13.4</td>
<td align="right">11.0</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">14.8</td>
<td align="right">58.00</td>
<td align="right">20.10</td>
<td align="right">9.6</td>
<td align="right">11.1</td>
<td align="right">11.7</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.2</td>
<td align="right">57.50</td>
<td align="right">18.50</td>
<td align="right">9.9</td>
<td align="right">12.8</td>
<td align="right">11.4</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.4</td>
<td align="right">58.00</td>
<td align="right">20.80</td>
<td align="right">10.2</td>
<td align="right">12.8</td>
<td align="right">11.9</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">16.3</td>
<td align="right">58.00</td>
<td align="right">20.10</td>
<td align="right">8.8</td>
<td align="right">13.0</td>
<td align="right">12.9</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.5</td>
<td align="right">57.00</td>
<td align="right">19.60</td>
<td align="right">10.5</td>
<td align="right">13.9</td>
<td align="right">11.8</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.0</td>
<td align="right">56.50</td>
<td align="right">19.60</td>
<td align="right">10.4</td>
<td align="right">14.5</td>
<td align="right">12.0</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.5</td>
<td align="right">57.20</td>
<td align="right">20.00</td>
<td align="right">11.2</td>
<td align="right">13.4</td>
<td align="right">12.4</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.5</td>
<td align="right">56.50</td>
<td align="right">19.80</td>
<td align="right">9.2</td>
<td align="right">12.8</td>
<td align="right">12.2</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.7</td>
<td align="right">57.50</td>
<td align="right">19.80</td>
<td align="right">11.8</td>
<td align="right">12.6</td>
<td align="right">12.5</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">14.4</td>
<td align="right">57.00</td>
<td align="right">20.40</td>
<td align="right">10.2</td>
<td align="right">12.7</td>
<td align="right">12.3</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">14.9</td>
<td align="right">54.80</td>
<td align="right">18.50</td>
<td align="right">11.2</td>
<td align="right">13.8</td>
<td align="right">11.3</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">16.5</td>
<td align="right">59.80</td>
<td align="right">20.20</td>
<td align="right">9.4</td>
<td align="right">14.3</td>
<td align="right">12.2</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.5</td>
<td align="right">56.10</td>
<td align="right">18.80</td>
<td align="right">9.8</td>
<td align="right">13.8</td>
<td align="right">12.6</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.3</td>
<td align="right">55.00</td>
<td align="right">19.00</td>
<td align="right">10.1</td>
<td align="right">14.2</td>
<td align="right">11.6</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">14.5</td>
<td align="right">55.60</td>
<td align="right">19.30</td>
<td align="right">12.0</td>
<td align="right">12.6</td>
<td align="right">11.6</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.5</td>
<td align="right">56.50</td>
<td align="right">20.00</td>
<td align="right">9.9</td>
<td align="right">13.4</td>
<td align="right">11.5</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.2</td>
<td align="right">55.00</td>
<td align="right">19.30</td>
<td align="right">9.9</td>
<td align="right">14.4</td>
<td align="right">11.9</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.3</td>
<td align="right">56.50</td>
<td align="right">19.30</td>
<td align="right">9.1</td>
<td align="right">12.8</td>
<td align="right">11.7</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.3</td>
<td align="right">56.80</td>
<td align="right">20.20</td>
<td align="right">8.6</td>
<td align="right">14.2</td>
<td align="right">11.5</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.8</td>
<td align="right">55.50</td>
<td align="right">19.20</td>
<td align="right">8.2</td>
<td align="right">13.0</td>
<td align="right">12.6</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">14.8</td>
<td align="right">57.00</td>
<td align="right">20.20</td>
<td align="right">9.8</td>
<td align="right">13.8</td>
<td align="right">10.5</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.2</td>
<td align="right">56.90</td>
<td align="right">19.10</td>
<td align="right">9.6</td>
<td align="right">13.0</td>
<td align="right">11.2</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">15.9</td>
<td align="right">58.80</td>
<td align="right">21.00</td>
<td align="right">8.6</td>
<td align="right">13.5</td>
<td align="right">11.8</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">15.5</td>
<td align="right">57.30</td>
<td align="right">20.10</td>
<td align="right">9.6</td>
<td align="right">14.1</td>
<td align="right">12.3</td>
</tr>
<tr class="odd">
<td align="left">2</td>
<td align="right">16.5</td>
<td align="right">58.00</td>
<td align="right">19.50</td>
<td align="right">9.0</td>
<td align="right">13.9</td>
<td align="right">13.3</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="right">17.3</td>
<td align="right">62.60</td>
<td align="right">21.50</td>
<td align="right">10.3</td>
<td align="right">13.8</td>
<td align="right">12.8</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">14.9</td>
<td align="right">56.50</td>
<td align="right">20.40</td>
<td align="right">7.4</td>
<td align="right">13.0</td>
<td align="right">12.0</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">15.4</td>
<td align="right">57.50</td>
<td align="right">19.50</td>
<td align="right">10.5</td>
<td align="right">13.8</td>
<td align="right">11.5</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.3</td>
<td align="right">55.40</td>
<td align="right">19.20</td>
<td align="right">9.7</td>
<td align="right">13.3</td>
<td align="right">11.5</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">14.6</td>
<td align="right">56.00</td>
<td align="right">19.80</td>
<td align="right">8.5</td>
<td align="right">12.0</td>
<td align="right">11.5</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">16.2</td>
<td align="right">56.50</td>
<td align="right">19.50</td>
<td align="right">11.5</td>
<td align="right">14.5</td>
<td align="right">11.8</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">14.6</td>
<td align="right">58.00</td>
<td align="right">19.90</td>
<td align="right">13.0</td>
<td align="right">13.4</td>
<td align="right">11.5</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.9</td>
<td align="right">56.70</td>
<td align="right">18.70</td>
<td align="right">10.8</td>
<td align="right">12.8</td>
<td align="right">12.6</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">14.7</td>
<td align="right">55.80</td>
<td align="right">18.70</td>
<td align="right">11.1</td>
<td align="right">13.9</td>
<td align="right">11.2</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.5</td>
<td align="right">58.50</td>
<td align="right">19.40</td>
<td align="right">11.5</td>
<td align="right">13.4</td>
<td align="right">11.9</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">16.1</td>
<td align="right">60.00</td>
<td align="right">20.30</td>
<td align="right">10.6</td>
<td align="right">13.7</td>
<td align="right">12.2</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.2</td>
<td align="right">57.80</td>
<td align="right">19.90</td>
<td align="right">10.4</td>
<td align="right">13.5</td>
<td align="right">11.4</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">15.1</td>
<td align="right">56.00</td>
<td align="right">19.40</td>
<td align="right">10.0</td>
<td align="right">13.1</td>
<td align="right">10.9</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.9</td>
<td align="right">59.80</td>
<td align="right">20.50</td>
<td align="right">12.0</td>
<td align="right">13.6</td>
<td align="right">11.5</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">16.1</td>
<td align="right">57.70</td>
<td align="right">19.70</td>
<td align="right">10.2</td>
<td align="right">13.6</td>
<td align="right">11.5</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.7</td>
<td align="right">58.70</td>
<td align="right">20.70</td>
<td align="right">11.3</td>
<td align="right">13.6</td>
<td align="right">11.3</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">15.3</td>
<td align="right">56.90</td>
<td align="right">19.60</td>
<td align="right">10.5</td>
<td align="right">13.5</td>
<td align="right">12.1</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.3</td>
<td align="right">56.90</td>
<td align="right">19.50</td>
<td align="right">9.9</td>
<td align="right">14.0</td>
<td align="right">12.1</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">15.2</td>
<td align="right">58.00</td>
<td align="right">20.60</td>
<td align="right">11.0</td>
<td align="right">15.1</td>
<td align="right">11.7</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">16.6</td>
<td align="right">59.30</td>
<td align="right">19.90</td>
<td align="right">12.1</td>
<td align="right">14.6</td>
<td align="right">12.1</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">15.5</td>
<td align="right">58.20</td>
<td align="right">19.70</td>
<td align="right">11.7</td>
<td align="right">13.8</td>
<td align="right">12.1</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.8</td>
<td align="right">57.50</td>
<td align="right">18.90</td>
<td align="right">11.8</td>
<td align="right">14.7</td>
<td align="right">11.8</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">16.0</td>
<td align="right">57.20</td>
<td align="right">19.80</td>
<td align="right">10.8</td>
<td align="right">13.9</td>
<td align="right">12.0</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.4</td>
<td align="right">57.00</td>
<td align="right">19.80</td>
<td align="right">11.3</td>
<td align="right">14.0</td>
<td align="right">11.4</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">16.0</td>
<td align="right">59.20</td>
<td align="right">20.80</td>
<td align="right">10.4</td>
<td align="right">13.8</td>
<td align="right">12.2</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.4</td>
<td align="right">57.60</td>
<td align="right">19.60</td>
<td align="right">10.2</td>
<td align="right">13.9</td>
<td align="right">11.7</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">15.8</td>
<td align="right">60.30</td>
<td align="right">20.80</td>
<td align="right">12.4</td>
<td align="right">13.4</td>
<td align="right">12.1</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.4</td>
<td align="right">55.00</td>
<td align="right">18.80</td>
<td align="right">10.7</td>
<td align="right">14.2</td>
<td align="right">10.8</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">15.5</td>
<td align="right">58.40</td>
<td align="right">19.80</td>
<td align="right">13.1</td>
<td align="right">14.5</td>
<td align="right">11.7</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="right">15.7</td>
<td align="right">59.00</td>
<td align="right">20.40</td>
<td align="right">12.1</td>
<td align="right">13.0</td>
<td align="right">12.7</td>
</tr>
<tr class="even">
<td align="left">3</td>
<td align="right">17.3</td>
<td align="right">61.70</td>
<td align="right">20.70</td>
<td align="right">11.9</td>
<td align="right">13.3</td>
<td align="right">13.3</td>
</tr>
</tbody>
</table>'

# Parse the HTML
html <- read_html(html_text)

# Extract the table data
table_data <- html %>%
  html_nodes("table") %>%
  html_table(fill = TRUE)

# Extract the tibble from the list
my_tibble <- table_data[[1]]

# Convert tibble to a data frame
my_data <- as.data.frame(my_tibble)

# Perform PCA
pca_result <- prcomp(my_data[, -1], scale. = TRUE)  # Assuming "group" is the first column and not used in PCA

#reverse the signs
rotation <- -1*pca_result$rotation

#reverse the signs of the scores
results <- -1*pca_result$x


#calculate total variance explained by each principal component
var_explained = pca_result$sdev^2 / sum(pca_result$sdev^2)
var_explained

biplot(pca_result, scale = 0)


