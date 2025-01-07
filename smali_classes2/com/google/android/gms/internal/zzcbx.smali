.class public final Lcom/google/android/gms/internal/zzcbx;
.super Ljava/lang/Object;


# static fields
.field private static final zzhno:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcbx;->zzhno:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static zzhw(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/zzcbx;->zzhno:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v4, "com.google"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p0, :cond_8

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    new-array v4, v1, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v5, v3, v4, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit8 p0, v1, -0x4

    add-int/2addr p0, v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    const v6, 0x1b873593

    const v7, -0x3361d2af    # -8.293031E7f

    if-ge v0, p0, :cond_4

    aget-byte v8, v4, v0

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x3

    aget-byte v9, v4, v9

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    mul-int v8, v8, v7

    shl-int/lit8 v7, v8, 0xf

    ushr-int/lit8 v8, v8, 0x11

    or-int/2addr v7, v8

    mul-int v7, v7, v6

    xor-int/2addr v5, v7

    shl-int/lit8 v6, v5, 0xd

    ushr-int/lit8 v5, v5, 0x13

    or-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x5

    const v6, -0x19ab949c

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    and-int/lit8 v0, v1, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, p0, 0x2

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x10

    :cond_6
    add-int/lit8 v0, p0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    :cond_7
    aget-byte p0, v4, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v3

    mul-int p0, p0, v7

    shl-int/lit8 v0, p0, 0xf

    ushr-int/lit8 p0, p0, 0x11

    or-int/2addr p0, v0

    mul-int p0, p0, v6

    xor-int/2addr v5, p0

    :goto_3
    xor-int p0, v5, v1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, -0x7a143595

    mul-int p0, p0, v0

    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    const v0, -0x3d4d51cb

    mul-int p0, p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_4
    return-object p0
.end method
