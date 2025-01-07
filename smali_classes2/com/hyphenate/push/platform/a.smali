.class public abstract Lcom/hyphenate/push/platform/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "IPush"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/push/platform/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/push/platform/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/hyphenate/push/platform/a;->a(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/push/platform/a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/push/platform/a;->b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V

    return-void
.end method

.method public abstract b()Lcom/hyphenate/push/EMPushType;
.end method

.method public abstract b(Landroid/content/Context;)V
.end method

.method public abstract b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
.end method
