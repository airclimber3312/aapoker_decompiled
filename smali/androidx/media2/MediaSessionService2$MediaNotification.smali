.class public Landroidx/media2/MediaSessionService2$MediaNotification;
.super Ljava/lang/Object;
.source "MediaSessionService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSessionService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaNotification"
.end annotation


# instance fields
.field private final mNotification:Landroid/app/Notification;

.field private final mNotificationId:I


# direct methods
.method public constructor <init>(ILandroid/app/Notification;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 228
    iput p1, p0, Landroidx/media2/MediaSessionService2$MediaNotification;->mNotificationId:I

    .line 229
    iput-object p2, p0, Landroidx/media2/MediaSessionService2$MediaNotification;->mNotification:Landroid/app/Notification;

    return-void

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "notification shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/media2/MediaSessionService2$MediaNotification;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 238
    iget v0, p0, Landroidx/media2/MediaSessionService2$MediaNotification;->mNotificationId:I

    return v0
.end method
