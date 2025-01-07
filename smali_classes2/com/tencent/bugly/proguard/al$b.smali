.class public final Lcom/tencent/bugly/proguard/al$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public arg1:I

.field public arg2:I

.field final synthetic bu:Lcom/tencent/bugly/proguard/al;

.field public bv:Ljava/lang/String;

.field public bw:Ljava/lang/String;

.field public what:I

.field public when:J


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/al;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/al$b;->bu:Lcom/tencent/bugly/proguard/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
