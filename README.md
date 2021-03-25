# MSRewardsExtensionCleaner
Cleans the Microsoft Rewards extension for Chrome to remove notifications, extension list tracking, and default search/newtab to Bing.

## Requirements
- Windows 10, 64-bit
- Any Chromium based browser (Chrome, Edge, Opera)

## Installation
Download the latest release [**here**](https://github.com/burritosoftware/MSRewardsExtensionCleaner/archive/refs/heads/main.zip), and extract the contents to any folder you like (besides Program Files).  
If you'd like to have MSRewardsExtensionCleaner **check for updates to the extension and repatch automatically & silently if one is found** on startup of your computer, run `UpdateOnStartup.bat`. This can be removed later in your Startup folder.  

Now, run `clean.bat`. A window will appear similar to below, and then you'll see the window go green when it's finished.
> If it goes red, that means that the extension is already cleaned and no updates were found to require a repatch.

![success window](https://media.discordapp.net/attachments/558842854462717954/824522399633899560/unknown.png)

Once finished, open your browser and go to the Extensions menu: **Chrome** `chrome://extensions` or **Edge** `edge://extensions`
Make sure **Developer mode** is enabled. Look for the toggle and enable it. In my case, I'm using Edge so I'll enable the switch in the bottom left.
Then, you'll see a Load unpacked button appear. Click it and navigate to the LOAD_ME folder, which will be located wherever you extracted the cleaner.

![developer mode](https://media.discordapp.net/attachments/558842854462717954/824522697606037534/unknown.png)

After that, that's it! You'll now have Microsoft Rewards installed, but without interfering with your browser settings or privacy. You'll know that it's correct if you see `(Cleaned)` in the extension title.

## Licensing

### curl

COPYRIGHT AND PERMISSION NOTICE

Copyright (c) 1996 - 2021, Daniel Stenberg, daniel@haxx.se, and many contributors, see the THANKS file.

All rights reserved.

Permission to use, copy, modify, and distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name of a copyright holder shall not be used in advertising or otherwise to promote the sale, use or other dealings in this Software without prior written authorization of the copyright holder.

### 7-zip
GNU LGPL information
--------------------

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You can receive a copy of the GNU Lesser General Public License from
    http://www.gnu.org/




  BSD 3-clause License
  --------------------

    The "BSD 3-clause License" is used for the code in 7z.dll that implements LZFSE data decompression.
    That code was derived from the code in the "LZFSE compression library" developed by Apple Inc,
    that also uses the "BSD 3-clause License":

    ----
    Copyright (c) 2015-2016, Apple Inc. All rights reserved.

    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    1.  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

    2.  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer
        in the documentation and/or other materials provided with the distribution.

    3.  Neither the name of the copyright holder(s) nor the names of any contributors may be used to endorse or promote products derived
        from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
    HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    ----




  unRAR license restriction
  -------------------------

    The decompression engine for RAR archives was developed using source
    code of unRAR program.
    All copyrights to original unRAR code are owned by Alexander Roshal.

    The license for original unRAR code has the following restriction:

      The unRAR sources cannot be used to re-create the RAR compression algorithm,
      which is proprietary. Distribution of modified unRAR sources in separate form
      or as a part of other software is permitted, provided that it is clearly
      stated in the documentation and source comments that the code may
      not be used to develop a RAR (WinRAR) compatible archiver.
