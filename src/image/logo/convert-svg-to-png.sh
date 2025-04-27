#!/bin/bash

for size in 8 10 12 14; do
    flatpak run org.inkscape.Inkscape \
        ./svg/konnex-logo-8.svg \
        --export-width=$size --export-height=$size \
        --export-type=png \
        --export-filename="./png/konnex-logo-$size-big.png"

    zopflipng -m \
        --lossy_transparent \
        --lossy_8bit \
        --iterations=256 \
        --filters=01234mepb \
        ./png/konnex-logo-$size-big.png \
        ./png/konnex-logo-$size.png

    rm ./png/konnex-logo-$size-big.png
done

for size in 16 20; do
    flatpak run org.inkscape.Inkscape \
        ./svg/konnex-logo-10.svg \
        --export-width=$size --export-height=$size \
        --export-type=png \
        --export-filename="./png/konnex-logo-$size-big.png"

    zopflipng -m \
        --lossy_transparent \
        --lossy_8bit \
        --iterations=256 \
        --filters=01234mepb \
        ./png/konnex-logo-$size-big.png \
        ./png/konnex-logo-$size.png

    rm ./png/konnex-logo-$size-big.png
done

for size in 24 28; do
    flatpak run org.inkscape.Inkscape \
        ./svg/konnex-logo-12.svg \
        --export-width=$size --export-height=$size \
        --export-type=png \
        --export-filename="./png/konnex-logo-$size-big.png"

    zopflipng -m \
        --lossy_transparent \
        --lossy_8bit \
        --iterations=256 \
        --filters=01234mepb \
        ./png/konnex-logo-$size-big.png \
        ./png/konnex-logo-$size.png

    rm ./png/konnex-logo-$size-big.png
done

for size in 32 36 38 44; do
    flatpak run org.inkscape.Inkscape \
        ./svg/konnex-logo-16.svg \
        --export-width=$size --export-height=$size \
        --export-type=png \
        --export-filename="./png/konnex-logo-$size-big.png"

    zopflipng -m \
        --lossy_transparent \
        --lossy_8bit \
        --iterations=128 \
        --filters=01234mepb \
        ./png/konnex-logo-$size-big.png \
        ./png/konnex-logo-$size.png

    rm ./png/konnex-logo-$size-big.png
done

for size in 48 57 58 60; do
    flatpak run org.inkscape.Inkscape \
        ./svg/konnex-logo-24.svg \
        --export-width=$size --export-height=$size \
        --export-type=png \
        --export-filename="./png/konnex-logo-$size-big.png"

    zopflipng -m \
        --lossy_transparent \
        --lossy_8bit \
        --iterations=128 \
        --filters=01234mepb \
        ./png/konnex-logo-$size-big.png \
        ./png/konnex-logo-$size.png

    rm ./png/konnex-logo-$size-big.png
done

for size in 64 70 72 76 80 96 100 120 128 144 150 152; do
    for name in konnex-logo konnex-logo-with-text; do
        
        flatpak run org.inkscape.Inkscape \
            ./svg/$name.svg \
            --export-width=$size --export-height=$size \
            --export-type=png \
            --export-filename="./png/$name-$size-big.png"

        zopflipng -m \
            --lossy_transparent \
            --lossy_8bit \
            --iterations=64 \
            --filters=01234mepb \
            ./png/$name-$size-big.png \
            ./png/$name-$size.png

        rm ./png/$name-$size-big.png
    
    done
done

for size in 167 180 192 256 310 384 420 512; do
    for name in konnex-logo konnex-logo-with-text; do

        flatpak run org.inkscape.Inkscape \
            ./svg/$name.svg \
            --export-width=$size --export-height=$size \
            --export-type=png \
            --export-filename="./png/$name-$size-big.png"

        zopflipng -m \
            --lossy_transparent \
            --lossy_8bit \
            --iterations=32 \
            --filters=01234mepb \
            ./png/$name-$size-big.png \
            ./png/$name-$size.png

        rm ./png/$name-$size-big.png

    done
done

for size in 558 768 1024; do
    for name in konnex-logo konnex-logo-with-text; do
        flatpak run org.inkscape.Inkscape \
            ./svg/$name.svg \
            --export-width=$size --export-height=$size \
            --export-type=png \
            --export-filename="./png/$name-$size-big.png"

        zopflipng -m \
            --lossy_transparent \
            --lossy_8bit \
            --iterations=16 \
            --filters=01234mepb \
            ./png/$name-$size-big.png \
            ./png/$name-$size.png

        rm ./png/$name-$size-big.png

    done
done
