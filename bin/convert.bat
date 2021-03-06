@echo off
if "%1"=="" goto usage
if "%2"=="" goto convert

java -cp .;..\lib\* com.liferay.documentation.util.MarkdownToHtmlMain %1 %2

goto end

:usage

echo Usage: convert.bat [Markdown file to convert] or convert.bat [Markdown file to convert] [HTML file to be written]
echo.
echo The first argument is the path to the Markdown file to convert to HTML.
echo.
echo The second argument is optional. It specifies the path to the HTML file to be created. If this argument is omitted, the HTML file to be created will be created in the same directory as the Markdown file and will have the same filename as the Markdown file except that the .markdown file extension will be replaced by the .html file extension.
echo.
goto end

:convert

set htmlFile=%1
set htmlFile=%htmlFile:markdown=html%

java -cp .;..\lib\* com.liferay.documentation.util.MarkdownToHtmlMain %1 %htmlFile%

:end
