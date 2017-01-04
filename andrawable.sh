mkdir "mipmap-mdpi"
mkdir "mipmap-hdpi"
mkdir "mipmap-xhdpi"
mkdir "mipmap-xxhdpi"
mkdir "mipmap-xxxhdpi"
for file in `ls -F | grep @1x`; do
        echo $file mipmap-mdpi/${file%@1x.png}.png
        mv $file mipmap-mdpi/${file%@1x.png}.png
done
for file in `ls -F | grep @1.5x`; do
        echo $file mipmap-hdpi/${file%@1.5x.png}.png
        mv $file mipmap-hdpi/${file%@1.5x.png}.png
done
for file in `ls -F | grep @2x`; do
	echo $file mipmap-xhdpi/${file%@2x.png}.png
	mv $file mipmap-xhdpi/${file%@2x.png}.png
done
for file in `ls -F | grep @3x`; do
	echo $file mipmap-xxhdpi/${file%@3x.png}.png
	mv $file mipmap-xxhdpi/${file%@3x.png}.png
done
for file in `ls -F | grep @4x`; do
	echo $file mipmap-xxxhdpi/${file%@4x.png}.png
	mv $file mipmap-xxxhdpi/${file%@4x.png}.png
done
