.class public Lcom/google/android/gms/wearable/DataMap;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "DataMap"


# instance fields
.field private final zzall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    return-void
.end method

.method public static arrayListFromBundleArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wearable/DataMap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/google/android/gms/wearable/DataMap;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;
    .locals 6

    const-class v0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/wearable/DataMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_4
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_5
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    :cond_7
    instance-of v4, v3, [B

    if-eqz v4, :cond_8

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_8
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_9

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    instance-of v4, v3, [J

    if-eqz v4, :cond_a

    check-cast v3, [J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    :cond_a
    instance-of v4, v3, [F

    if-eqz v4, :cond_b

    check-cast v3, [F

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    :cond_b
    instance-of v4, v3, Lcom/google/android/gms/wearable/Asset;

    if-eqz v4, :cond_c

    check-cast v3, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    goto/16 :goto_0

    :cond_c
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_d

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/google/android/gms/wearable/DataMap;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    goto/16 :goto_0

    :cond_d
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/google/android/gms/wearable/DataMap;->zze(Ljava/util/ArrayList;)I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v5, 0x1

    if-eq v4, v5, :cond_10

    const/4 v5, 0x2

    if-eq v4, v5, :cond_f

    const/4 v5, 0x3

    if-eq v4, v5, :cond_10

    const/4 v5, 0x5

    if-eq v4, v5, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/wearable/DataMap;->arrayListFromBundleArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_11
    return-object v0
.end method

.method public static fromByteArray([B)Lcom/google/android/gms/wearable/DataMap;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzdnh;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdni;->zzad([B)Lcom/google/android/gms/internal/zzdni;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzdnh;-><init>(Lcom/google/android/gms/internal/zzdni;Ljava/util/List;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdng;->zza(Lcom/google/android/gms/internal/zzdnh;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to convert data"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 1

    const-string v0, "<null>"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but value was a "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".  The default value "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was returned."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataMap"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Attempt to cast generated internal exception:"

    invoke-static {p1, p0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    :cond_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_5
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-void

    :cond_6
    instance-of v0, p2, [B

    if-eqz v0, :cond_7

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void

    :cond_7
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_8
    instance-of v0, p2, [J

    if-eqz v0, :cond_9

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :cond_9
    instance-of v0, p2, [F

    if-eqz v0, :cond_a

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_a
    instance-of v0, p2, Lcom/google/android/gms/wearable/Asset;

    if-eqz v0, :cond_b

    check-cast p2, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_b
    instance-of v0, p2, Lcom/google/android/gms/wearable/DataMap;

    if-eqz v0, :cond_c

    check-cast p2, Lcom/google/android/gms/wearable/DataMap;

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_c
    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/google/android/gms/wearable/DataMap;->zze(Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    goto :goto_1

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_e

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/wearable/DataMap;

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_f
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_11
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_12
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_13
    :goto_1
    return-void
.end method

.method private static zze(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    instance-of v3, v2, Lcom/google/android/gms/wearable/DataMap;

    if-eqz v3, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/wearable/DataMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/wearable/DataMap;

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v4, Lcom/google/android/gms/wearable/Asset;

    if-eqz v5, :cond_8

    instance-of v5, v2, Lcom/google/android/gms/wearable/Asset;

    if-nez v5, :cond_3

    return v1

    :cond_3
    check-cast v4, Lcom/google/android/gms/wearable/Asset;

    check-cast v2, Lcom/google/android/gms/wearable/Asset;

    if-eqz v4, :cond_6

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v4}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_1

    :cond_6
    :goto_0
    if-ne v4, v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    return v1

    :cond_8
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_a

    instance-of v3, v2, [Ljava/lang/String;

    if-nez v3, :cond_9

    return v1

    :cond_9
    check-cast v4, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_a
    instance-of v5, v4, [J

    if-eqz v5, :cond_c

    instance-of v3, v2, [J

    if-nez v3, :cond_b

    return v1

    :cond_b
    check-cast v4, [J

    check-cast v2, [J

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_c
    instance-of v5, v4, [F

    if-eqz v5, :cond_e

    instance-of v3, v2, [F

    if-nez v3, :cond_d

    return v1

    :cond_d
    check-cast v4, [F

    check-cast v2, [F

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_e
    instance-of v5, v4, [B

    if-eqz v5, :cond_10

    instance-of v3, v2, [B

    if-nez v3, :cond_f

    return v1

    :cond_f
    check-cast v4, [B

    check-cast v2, [B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_10
    if-eqz v4, :cond_12

    if-nez v2, :cond_11

    goto :goto_2

    :cond_11
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_12
    :goto_2
    if-eq v4, v2, :cond_13

    return v1

    :cond_13
    return v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/wearable/Asset;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "Asset"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    const-string v2, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v0, v2, v3, v1}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getByte(Ljava/lang/String;B)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    const-string v2, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p1, v0, v2, v3, v1}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "byte[]"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/wearable/DataMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "DataMap"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getDataMapArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wearable/DataMap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "ArrayList<DataMap>"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception v1

    const-string v2, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p1, v0, v2, v3, v1}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return-wide p2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    const-string v2, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1, v0, v2, v3, v1}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "float[]"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    const-string v2, "Integer"

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return p2
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "ArrayList<Integer>"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception v1

    const-string v2, "long"

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "long[]"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "String"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "String[]"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "ArrayList<String>"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/DataMap;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/android/gms/wearable/DataMap;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wearable/DataMap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdng;->zza(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/zzdnh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdnh;->zzlwk:Lcom/google/android/gms/internal/zzdni;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfls;->zzc(Lcom/google/android/gms/internal/zzfls;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataMap;->zzall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
