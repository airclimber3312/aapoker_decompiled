.class public Lcom/hyphenate/chat/EMTranslateParams;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public EndPoint:Ljava/lang/String;

.field public LoadCount:I

.field public SubscriptionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslateParams;->SubscriptionKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/chat/EMTranslateParams;->EndPoint:Ljava/lang/String;

    iput p3, p0, Lcom/hyphenate/chat/EMTranslateParams;->LoadCount:I

    return-void
.end method
