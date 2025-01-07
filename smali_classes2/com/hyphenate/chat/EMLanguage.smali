.class public Lcom/hyphenate/chat/EMLanguage;
.super Ljava/lang/Object;


# instance fields
.field public LanguageCode:Ljava/lang/String;

.field public LanguageLocalName:Ljava/lang/String;

.field public LanguageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMLanguage;->LanguageCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/chat/EMLanguage;->LanguageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMLanguage;->LanguageLocalName:Ljava/lang/String;

    return-void
.end method
