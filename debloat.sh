#!/bin/bash

# 1. Đường dẫn gốc (Nơi bắt đầu tìm kiếm)
TARGET_DIR="./out"

# 2. Danh sách các ứng dụng (Giữ nguyên danh sách của bạn)
APPS=(
    "ARCore" "BasicDreams" "BBCAgent" "BixbyWakeup" "BlockchainBasicKit"
    "BookmarkProvider" "BrightnessBackupService" "ChromeCustomizations"
    "ClipboardEdge" "CocktailQuickTool" "ContainerService" "EasterEgg"
    "EasymodeContactsWidget81" "EasyOneHand3" "Fast" "FBAppManager_NS"
    "Foundation" "GearManagerStub" "GooglePrintRecommendationService"
    "HandwritingService" "KidsHome_Installer" "LiveDrawing" "LiveTranscribe"
    "MAPSAgent" "MdecService" "MDMApp" "MinusOnePage" "MoccaMobile"
    "Notes40" "OCRDataProvider" "ParentalCare" "PartnerBookmarksProvider"
    "PhotoTable" "PlayAutoInstallConfig" "PrivateAccessTokens" "Rampart"
    "Roboto" "SamsungOne" "SamsungPassAutofill_v1" "SamsungTTS_no_vdata"
    "SamsungTTSVoice_en_US_l03" "SamsungTTSVoice_es_MX_f00" "SamsungTTSVoice_pt_BR_f00"
    "SecHTMLViewer" "SecureElement" "ShortcutBackupService"
    "SmartManager_v6_DeviceSecurity" "SmartMirroring" "SmartReminder"
    "SmartSwitchAgent" "SmartSwitchStub" "StickerCenter" "Stk" "Stk2"
    "UniversalMDMClient" "VoiceAccess" "VTCameraSetting" "WallpaperBackup"
    "AppUpdateCenter" "AREmoji" "AREmojiEditor" "AuthFramework" "AutoDoodle"
    "AvatarEmojiSticker" "BackupRestoreConfirmation" "BCService" "Bixby"
    "BixbyInterpreter" "BixbyVisionFramework3.5" "BudsUniteManager"
    "DesktopModeUiService" "DiagMonAgent95" "DigitalKey" "DigitalWellbeing"
    "EnhancedAttestationAgent" "FBInstaller_NS" "FBServices" "FotaAgent"
    "GameHome" "GameOptimizingService" "GameTools_Dream" "HashTagService"
    "IpsGeofence" "KLMSAgent" "knoxanalyticsagent" "KnoxDesktopLauncher"
    "KnoxERAgent" "KnoxFrameBufferProvider" "KnoxMposAgent" "KnoxNetworkFilter"
    "KnoxNeuralNetworkRuntime" "KnoxPushManager" "KnoxSandbox" "knoxvpnproxyhandler"
    "KnoxZtFramework" "KPECore" "LedCoverService" "LinkToWindowsService"
    "MmsService" "OmaCP" "OMCAgent5" "OneDrive_Samsung_v3" "PaymentFramework"
    "PeopleStripe" "PetService" "SamsungBilling" "SamsungCarKeyFw"
    "SamsungCloudClient" "SamsungPass" "SamsungSeAgent" "SamsungSmartSuggestions"
    "SamsungVideoPlayer" "SCPMAgent" "SecureFolder" "SKMSAgent" "SmartEye"
    "SmartSwitchAssistant" "SmartThingsKit" "SmartTouchCall" "SOAgent76"
    "SPPPushClient" "SsuService" "StickerFaceARAvatar" "StoryService"
    "SVoiceIME" "Tag" "TaskEdgePanel_v3.2" "YourPhone_P1_5" "DuoStub" "YouTube" "AiWallpaper" "AndroidAutoStub" "FamilyLinkParentalControls" "Messages" "SearchSelector" "preload" "hidden" "AvatarPicker"
)

echo "--- Đang quét sâu trong thư mục: $TARGET_DIR ---"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Lỗi: Không tìm thấy thư mục $TARGET_DIR"
    exit 1
fi

for app in "${APPS[@]}"; do
    # Tìm tất cả thư mục có tên khớp với danh sách ở bất kỳ độ sâu nào
    # -type d: Chỉ tìm thư mục
    # -name: Khớp chính xác tên (hoặc dùng -iname nếu muốn bỏ qua hoa thường)
    find "$TARGET_DIR" -type d -name "$app" | while read -r dir_path; do
        echo "Đang xóa: $dir_path"
       sudo rm -rf "$dir_path"
    done
done

echo "--- Đã dọn dẹp xong! ---"
