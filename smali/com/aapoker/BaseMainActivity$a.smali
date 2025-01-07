.class public Lcom/aapoker/BaseMainActivity$a;
.super Ljava/lang/Object;
.source "BaseMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aapoker/BaseMainActivity;->Init(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/aapoker/BaseMainActivity;


# direct methods
.method public constructor <init>(Lcom/aapoker/BaseMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/BaseMainActivity$a;->b:Lcom/aapoker/BaseMainActivity;

    iput-object p2, p0, Lcom/aapoker/BaseMainActivity$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aapoker/BaseMainActivity$a;->b:Lcom/aapoker/BaseMainActivity;

    iget-object v1, p0, Lcom/aapoker/BaseMainActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aapoker/BaseMainActivity;->c(Ljava/lang/String;)V

    return-void
.end method
