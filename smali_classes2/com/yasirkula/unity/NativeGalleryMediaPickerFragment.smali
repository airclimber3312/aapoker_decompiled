.class public Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;
.super Landroid/app/Fragment;
.source "NativeGalleryMediaPickerFragment.java"


# static fields
.field public static GrantPersistableUriPermission:Z = false

.field private static final MEDIA_REQUEST_CODE:I = 0xf113f

.field public static final MEDIA_TYPE_ID:Ljava/lang/String; = "NGMP_MEDIA_TYPE"

.field public static final MIME_ID:Ljava/lang/String; = "NGMP_MIME"

.field public static final SAVE_PATH_ID:Ljava/lang/String; = "NGMP_SAVE_PATH"

.field public static final SELECT_MULTIPLE_ID:Ljava/lang/String; = "NGMP_MULTIPLE"

.field public static final TITLE_ID:Ljava/lang/String; = "NGMP_TITLE"

.field public static preferGetContent:Z = false

.field public static showProgressbar:Z = true

.field public static tryPreserveFilenames:Z = false

.field public static useDefaultGalleryApp:Z = false


# instance fields
.field private final mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

.field private savePathDirectory:Ljava/lang/String;

.field private savePathFilename:Ljava/lang/String;

.field private selectMultiple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeGalleryMediaReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mediaReceiver"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    return-void
.end method

.method public static ShouldGrantPersistableUriPermission(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 146
    sget-boolean v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->GrantPersistableUriPermission:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const v0, 0xf113f

    if-eq p1, v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    if-nez p1, :cond_1

    const-string p1, "Unity"

    const-string p2, "NativeGalleryMediaPickerFragment.mediaReceiver became null in onActivityResult!"

    .line 158
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_2

    goto :goto_0

    .line 168
    :cond_2
    new-instance p1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    iget-boolean v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    iget-object v6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathDirectory:Ljava/lang/String;

    iget-object v7, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathFilename:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;-><init>(Landroid/content/Context;Lcom/yasirkula/unity/NativeGalleryMediaReceiver;Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-boolean p2, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->showProgressbar:Z

    if-eqz p2, :cond_3

    .line 170
    new-instance p2, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-direct {p2, p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;-><init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;)V

    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->execute()V

    .line 174
    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sendResultToUnity()V

    goto :goto_1

    .line 161
    :cond_4
    :goto_0
    iget-boolean p2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    const-string p3, ""

    if-nez p2, :cond_5

    .line 162
    invoke-interface {p1, p3}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_5
    invoke-interface {p1, p3}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMultipleMediaReceived(Ljava/lang/String;)V

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_6

    .line 179
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3

    .line 181
    :cond_6
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    const/4 v0, 0x0

    const v1, 0xf113f

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Unity"

    const-string v3, "NativeGalleryMediaPickerFragment.mediaReceiver became null in onCreate!"

    .line 55
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, v1, v2, v0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "NGMP_MEDIA_TYPE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 61
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "NGMP_MIME"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NGMP_TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "NGMP_MULTIPLE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    .line 64
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "NGMP_SAVE_PATH"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_0
    iput-object v7, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathFilename:Ljava/lang/String;

    if-lez v6, :cond_2

    .line 68
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathDirectory:Ljava/lang/String;

    and-int/lit8 v5, p1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    and-int/lit8 v8, p1, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    :cond_4
    and-int/lit8 v10, p1, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 79
    :cond_5
    sget-boolean v12, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->preferGetContent:Z

    if-nez v12, :cond_8

    iget-boolean v12, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    if-nez v12, :cond_8

    if-ne v7, v6, :cond_8

    if-eq p1, v11, :cond_8

    .line 81
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.PICK"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-ne p1, v6, :cond_6

    .line 84
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    if-ne p1, v9, :cond_7

    .line 86
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 88
    :cond_7
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    move-object v12, v0

    :goto_3
    if-nez v12, :cond_f

    .line 93
    new-instance v12, Landroid/content/Intent;

    if-le v7, v6, :cond_9

    const-string p1, "android.intent.action.OPEN_DOCUMENT"

    goto :goto_4

    :cond_9
    const-string p1, "android.intent.action.GET_CONTENT"

    :goto_4
    invoke-direct {v12, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.OPENABLE"

    .line 94
    invoke-virtual {v12, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v12, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-boolean p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    if-eqz p1, :cond_a

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 98
    invoke-virtual {v12, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    if-le v7, v6, :cond_e

    .line 106
    new-array p1, v7, [Ljava/lang/String;

    if-ne v5, v6, :cond_b

    const-string v3, "image/*"

    .line 109
    aput-object v3, p1, v2

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-ne v8, v9, :cond_c

    add-int/lit8 v5, v3, 0x1

    const-string v7, "video/*"

    .line 111
    aput-object v7, p1, v3

    move v3, v5

    :cond_c
    if-ne v10, v11, :cond_d

    const-string v5, "audio/*"

    .line 113
    aput-object v5, p1, v3

    :cond_d
    const-string v3, "android.intent.extra.MIME_TYPES"

    .line 115
    invoke-virtual {v12, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "*/*"

    .line 119
    :cond_e
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_f
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->ShouldGrantPersistableUriPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x40

    .line 123
    invoke-virtual {v12, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_10
    if-eqz v4, :cond_11

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_11

    const-string p1, "android.intent.extra.TITLE"

    .line 126
    invoke-virtual {v12, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_11
    :try_start_0
    sget-boolean p1, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->useDefaultGalleryApp:Z

    if-nez p1, :cond_13

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ne p1, v3, :cond_12

    invoke-static {}, Lcom/yasirkula/unity/NativeGalleryUtils;->IsXiaomiOrMIUI()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_6

    .line 134
    :cond_12
    invoke-static {v12, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 132
    :cond_13
    :goto_6
    invoke-virtual {p0, v12, v1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 138
    :catch_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v3, "No apps can perform this action."

    invoke-static {p1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 139
    invoke-virtual {p0, v1, v2, v0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_7
    return-void
.end method
