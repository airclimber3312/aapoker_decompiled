.class public Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;
.super Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/notification/EMNotificationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EMNotificationBigTextStyle"
.end annotation


# instance fields
.field private bigTxt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigTxt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;->bigTxt:Ljava/lang/String;

    return-object v0
.end method

.method public setBigTxt(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;->bigTxt:Ljava/lang/String;

    return-object p0
.end method
