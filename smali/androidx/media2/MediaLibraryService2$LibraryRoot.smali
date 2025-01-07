.class public final Landroidx/media2/MediaLibraryService2$LibraryRoot;
.super Ljava/lang/Object;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaLibraryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryRoot"
.end annotation


# static fields
.field public static final EXTRA_OFFLINE:Ljava/lang/String; = "android.media.extra.OFFLINE"

.field public static final EXTRA_RECENT:Ljava/lang/String; = "android.media.extra.RECENT"

.field public static final EXTRA_SUGGESTED:Ljava/lang/String; = "android.media.extra.SUGGESTED"


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 488
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2$LibraryRoot;->mRootId:Ljava/lang/String;

    .line 489
    iput-object p2, p0, Landroidx/media2/MediaLibraryService2$LibraryRoot;->mExtras:Landroid/os/Bundle;

    return-void

    .line 486
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rootId shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 503
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2$LibraryRoot;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2$LibraryRoot;->mRootId:Ljava/lang/String;

    return-object v0
.end method
