.class final Lcom/tencent/bugly/proguard/dn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/dn;->h(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iP:Ljava/util/List;

.field final synthetic iQ:Lcom/tencent/bugly/proguard/dn;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/dn;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dn$1;->iQ:Lcom/tencent/bugly/proguard/dn;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/dn$1;->iP:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dn$1;->iP:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dn;->i(Ljava/util/List;)V

    return-void
.end method
