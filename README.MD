# Copy TortoiseSVN workspace folder to another drive

I was required to use TortoiseSVN as part of a project. I needed a way to also backup my work to a remote location.

## Why

I did not want to place the workspace folder somewhere where it would have a long directory path, potentially with spaces or other non-regular characters. I needed a way to synchronise the work I had done on a schedule to another drive from where it would be synchronised to a remote backup location.

## What

I created this Windows Batch File to make a tortoiseSVN backup and copy it to the other drive. Then using Windows Task Scheduler, I had it run a few times a day with appropriate timestamps.