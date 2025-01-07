.class public interface abstract Lcom/hyphenate/util/EMFileHelper$IFilePresenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/util/EMFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFilePresenter"
.end annotation


# virtual methods
.method public abstract getFileLength(Landroid/content/Context;Landroid/net/Uri;)J
.end method

.method public abstract getFileMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract isFileExist(Landroid/content/Context;Landroid/net/Uri;)Z
.end method
