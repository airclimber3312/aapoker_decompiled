.class public final synthetic Lcom/tencent/bugly/proguard/ar;
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

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic cm:[I

.field public static final synthetic cn:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/proguard/an;->values()[Lcom/tencent/bugly/proguard/an;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/tencent/bugly/proguard/an;->bJ:Lcom/tencent/bugly/proguard/an;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/an;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/tencent/bugly/proguard/an;->bG:Lcom/tencent/bugly/proguard/an;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/an;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/an;->values()[Lcom/tencent/bugly/proguard/an;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/tencent/bugly/proguard/an;->bJ:Lcom/tencent/bugly/proguard/an;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/an;->ordinal()I

    move-result v1

    aput v2, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->values()[Lcom/tencent/bugly/proguard/ap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->cb:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->cc:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->values()[Lcom/tencent/bugly/proguard/ap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->cb:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->cc:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->values()[Lcom/tencent/bugly/proguard/ap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/bugly/proguard/ar;->cm:[I

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->cb:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->cc:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->values()[Lcom/tencent/bugly/proguard/ap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/bugly/proguard/ar;->cn:[I

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->ca:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/tencent/bugly/proguard/ap;->bZ:Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
