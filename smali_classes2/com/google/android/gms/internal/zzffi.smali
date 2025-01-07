.class public final Lcom/google/android/gms/internal/zzffi;
.super Lcom/google/android/gms/internal/zzflm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzflm<",
        "Lcom/google/android/gms/internal/zzffi;",
        ">;"
    }
.end annotation


# static fields
.field private static zzpkq:Lcom/google/android/gms/internal/zzfln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfln<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzffi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpkr:[Lcom/google/android/gms/internal/zzffi;


# instance fields
.field public zzpks:Ljava/lang/String;

.field public zzpkt:Lcom/google/android/gms/internal/zzffm;

.field private zzpku:I

.field private zzpkv:I

.field private zzpkw:I

.field private zzpkx:Lcom/google/android/gms/internal/zzfga;

.field private zzpky:Lcom/google/android/gms/internal/zzffk;

.field private zzpkz:[Ljava/lang/String;

.field private zzpla:Lcom/google/android/gms/internal/zzffp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/zzffi;

    const-wide/32 v1, 0x32f6c5ca

    const/16 v3, 0xb

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gms/internal/zzfln;->zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/zzfln;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzffi;->zzpkq:Lcom/google/android/gms/internal/zzfln;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzffi;

    sput-object v0, Lcom/google/android/gms/internal/zzffi;->zzpkr:[Lcom/google/android/gms/internal/zzffi;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpku:I

    iput v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkv:I

    iput v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkw:I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    sget-object v1, Lcom/google/android/gms/internal/zzflv;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpnr:I

    return-void
.end method

.method private final zzao(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzffi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v1, 0xa

    if-eq v0, v1, :cond_12

    const/16 v1, 0x12

    if-eq v0, v1, :cond_10

    const/16 v1, 0x20

    if-eq v0, v1, :cond_f

    const/16 v1, 0x28

    if-eq v0, v1, :cond_e

    const/16 v1, 0x30

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x42

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x52

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzffp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    goto/16 :goto_5

    :cond_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzffk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzfga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfga;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    goto/16 :goto_5

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    goto :goto_3

    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum SignalType"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    :goto_3
    iput v2, p0, Lcom/google/android/gms/internal/zzffi;->zzpkw:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzffj;->zzkz(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/zzffi;->zzpkv:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v1

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_4

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/zzffi;->zzpku:I

    goto/16 :goto_0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum ContextFamily"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zzmw(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/zzffm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzffi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzffi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzffm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpku:I

    iget v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpku:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkv:I

    iget v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpkv:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkw:I

    iget v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpkw:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    if-eqz v1, :cond_a

    return v2

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfga;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    if-eqz v1, :cond_c

    return v2

    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzffk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflq;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    if-eqz v1, :cond_f

    return v2

    :cond_e
    iget-object v3, p1, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzffp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzflo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_13

    iget-object p1, p1, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_1

    :cond_12
    return v2

    :cond_13
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzffm;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpku:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkv:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkw:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfga;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzffk;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflq;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzffp;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->hashCode()I

    move-result v2

    :cond_6
    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzffi;->zzao(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzffi;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzp(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpku:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzad(II)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkv:I

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzad(II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkw:I

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzad(II)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_8

    aget-object v1, v1, v0

    if-eqz v1, :cond_7

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzp(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zza(ILcom/google/android/gms/internal/zzfls;)V

    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-void
.end method

.method protected final zzq()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzflm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpks:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzq(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkt:Lcom/google/android/gms/internal/zzffm;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpku:I

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzflk;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkv:I

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzflk;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkw:I

    if-eqz v1, :cond_4

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzflk;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkx:Lcom/google/android/gms/internal/zzfga;

    if-eqz v1, :cond_5

    const/4 v3, 0x7

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpky:Lcom/google/android/gms/internal/zzffk;

    if-eqz v1, :cond_6

    const/16 v3, 0x8

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzffi;->zzpkz:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_8

    aget-object v5, v5, v1

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzflk;->zztx(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffi;->zzpla:Lcom/google/android/gms/internal/zzffp;

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzb(ILcom/google/android/gms/internal/zzfls;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method
