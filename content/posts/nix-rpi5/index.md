---
title: "Installing NisOS on the Raspberry Pi 5"
date: 2024-09-25T12:19:40-06:00
header_image: raspberrypi5_1_large.jpg
header_caption: Image courtesy of Raspberry Pi Foundation
tags: ["Linux"]
toc: true
draft: true
---

# Requirements

These are the requirements to follow this guide.
I will only be covering how to install NixOS onto a Micro SD card using a Mac, but if you're handy you may be able to figure out how to install the OS onto a flash drive or NVMe stick.

- Raspberry Pi 5 (duh)
- A monitor with an HDMI port and a Mini HDMI to HDMI cable for connecting the RPi to your monitor. Here's a link to one: https://www.raspberrypi.com/products/standard-hdmi-a-male-to-mini-hdmi-c-male-cable/
- A USB keyboard for typing on the terminal of the RPi.
- A USB stick for booting the OS. Note that the entire flash drive will be dedicated to NixOS booting, so either use a small 8-16 GB drive that you have lying around or back up a larger one before wiping it and installing the OS.
- A micro SD card which will be the RPi's main source of storage.

Additionally, I used a Mac laptop to partition the boot drive and SD card, but you should be equally capable to do so with a Linux or Windows machine using their disk partitioning tools.

# Setup

We need to get the flash drive and SD card ready for the install.

The SD card is the trickier of the two.
The whole drive needs to be Fat32, and we need the drive to have two paritions: a small partition for containing the custom firmware needed to run UEFI on the RPi 5, and the rest of the drive dedicated to the OS.

This was a challenge because MacOS makes it very confusing on how to make multiple partitions on an MBR partitioned drive 🙃.
This is what worked for me.

## 1. Erase the SD card

First, erase the SD card and format it as Fat32 MBR.

{{<figure src="erase_sd.png" alt="Erasing the SD card with Disk Utility">}}

## 2. Partition the SD card

Open the termin and find the name of your SD card with the command `diskutil list`.

{{<figure src="list_drives.png" alt="Finding the name of your SD card">}}

Mine was `/dev/disk2`
For a Linux machine you should be able to use the command `lsblk`.

Then I had to use the following command to partition the drive correctly.
Make sure to use the device name of your SD card from `diskutil list` after `diskutil partitionDisk` in this command:

```bash
diskutil partitionDisk /dev/disk2 MBR fat32 FIRST 100m fat32 SECOND 100m
```

Somehow this command gives us the partitions we want.
I thought it would size the partition named `SECOND` to `100m`, but it made it exactly the size we wanted.
Through this process I learned to not ask too many questions.

## 3. Load the Firmware

Now you should see two volumes mounted to your computer: `FIRST` and `SECOND`.
We're going to load the custom firmware to the drive named `FIRST`.

Download the firmware from this URL: https://github.com/worproject/rpi5-uefi.
You'll navigate to "Releases" in the bottom right corner:

{{<figure src="github_firmware.png" alt="The Releases section in GitHub">}}

And download the file named `RPi5_UEFI_Release_vX.Y.zip`.

Unzip the file, and copy all of the files within the unzipped folder to the volume named `FIRST`.
Eject the SD card and now we can move on to the boot drive.

## 4. Setup the Boot Drive

# Installation

Now that your drives are properly formatted, let's get on with the actual install.

{{% subscribe %}}
