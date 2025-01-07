.class public Lcom/hyphenate/chat/EMTextMessageBody$EMTranslationInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMTextMessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EMTranslationInfo"
.end annotation


# instance fields
.field public languageCode:Ljava/lang/String;

.field public translationText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMTextMessageBody$EMTranslationInfo;->languageCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/chat/EMTextMessageBody$EMTranslationInfo;->translationText:Ljava/lang/String;

    return-void
.end method
