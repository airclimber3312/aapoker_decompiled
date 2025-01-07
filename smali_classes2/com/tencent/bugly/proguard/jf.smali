.class public final synthetic Lcom/tencent/bugly/proguard/jf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/bh$b;->values()[Lcom/tencent/bugly/proguard/bh$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/bugly/proguard/jf;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/tencent/bugly/proguard/bh$b;->dk:Lcom/tencent/bugly/proguard/bh$b;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/bh$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/tencent/bugly/proguard/bh$b;->dl:Lcom/tencent/bugly/proguard/bh$b;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/bh$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
