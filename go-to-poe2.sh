#!/usr/bin/env bash

TARGET="/run/media/tarasato/SN750-1TB/SteamLibrary/steamapps/compatdata/2694490/pfx/drive_c/users/steamuser/My Documents/My Games/Path of Exile 2/"

if [ ! -d "$TARGET" ]; then
    echo "ไม่พบโฟลเดอร์: $TARGET"
    echo "ตรวจสอบว่า drive SN750-1TB ถูก mount อยู่หรือไม่"
    exit 1
fi

dolphin "$TARGET" >/dev/null 2>&1 &
disown