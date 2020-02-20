cls
@SET /P M=Type 'a' for EU3, 'b' for BTS, 'c' for HOI3, 'd' for V2, 'e' for Sims 3, 'f' for Sims 3 Monthly 
@if %M%==a goto EU3
@if %M%==b goto BTS
@if %M%==c goto HOI3
@if %M%==d goto V2
@if %M%==e goto S3
@if %M%==f goto S3M
:BTS
del "C:\Users\David\AppData\Local\My Games\beyond the sword\cache\*.*" /Q
@goto end
:EU3
rmdir "D:\Programs\Steam\SteamApps\common\Europa Universalis III - Complete\map\cache\quad_textures" /S /Q
del "D:\Programs\Steam\SteamApps\common\Europa Universalis III - Complete\map\cache\*.*" /Q
rmdir "C:\Program Files\Steam\steamapps\common\europa universalis iii - complete\mod\Death and Taxes\map\cache\quad_textures" /S /Q
del "C:\Program Files\Steam\steamapps\common\europa universalis iii - complete\mod\Death and Taxes\map\cache\*.*" /Q
@goto end
:HOI3
rmdir "A:\Games\SteamLibrary\SteamApps\common\Hearts of Iron 3\map\cache\quad_textures" /S /Q
del "A:\Games\SteamLibrary\SteamApps\common\Hearts of Iron 3\map\cache\*.*" /Q
@goto end
:V2
rmdir "A:\Games\SteamLibrary\SteamApps\common\Victoria 2\map\cache\quad_textures" /S /Q
del "A:\Games\SteamLibrary\SteamApps\common\Victoria 2\map\cache\*.*" /Q
@goto end
:S3
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\CasPartCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\compositorCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\scriptCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\simCompositorCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\Thumbnails\CASThumbnails.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\Thumbnails\ObjectThumbnails.package" /Q
@goto end
:S3M
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\CasPartCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\compositorCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\scriptCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\simCompositorCache.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\Thumbnails\CASThumbnails.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\Thumbnails\ObjectThumbnails.package" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\WorldCaches\*.*" /Q
del "C:\Users\David\Documents\Electronic Arts\The Sims 3\DCBackup\*.*" /Q
@goto end
:end
@echo.
@echo Done.
@echo.
@pause