.class final Lcom/tencent/bugly/proguard/pz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/pz;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fu:Lcom/tencent/bugly/proguard/pz;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pz;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pz$1;->Fu:Lcom/tencent/bugly/proguard/pz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz$1;->Fu:Lcom/tencent/bugly/proguard/pz;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pz;->iD()V

    return-void
.end method
