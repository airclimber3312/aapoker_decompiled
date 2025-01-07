.class public final Lcom/google/android/gms/internal/zzdoj;
.super Lcom/google/android/gms/internal/zzflm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzflm<",
        "Lcom/google/android/gms/internal/zzdoj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzlym:[Lcom/google/android/gms/internal/zzdoj;


# instance fields
.field public zzjuj:Ljava/lang/Long;

.field public zzlyn:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdoj;->zzjuj:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzdoj;->zzpnr:I

    return-void
.end method

.method private final zzaf(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzdoj;
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

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyr()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdoj;->zzjuj:Ljava/lang/Long;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcym()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum EventType"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :pswitch_0
    :sswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzdoj;->zzlyn:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zzmw(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    goto :goto_0

    :cond_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
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

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x191
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_0
        0x25a -> :sswitch_0
        0x25b -> :sswitch_0
        0x25c -> :sswitch_0
        0x25d -> :sswitch_0
        0x25e -> :sswitch_0
        0x25f -> :sswitch_0
        0x260 -> :sswitch_0
        0x261 -> :sswitch_0
        0x262 -> :sswitch_0
        0x263 -> :sswitch_0
        0x264 -> :sswitch_0
        0x265 -> :sswitch_0
        0x266 -> :sswitch_0
        0x267 -> :sswitch_0
        0x268 -> :sswitch_0
        0x269 -> :sswitch_0
        0x26a -> :sswitch_0
        0x26b -> :sswitch_0
        0x26c -> :sswitch_0
        0x26d -> :sswitch_0
        0x26e -> :sswitch_0
        0x26f -> :sswitch_0
        0x270 -> :sswitch_0
        0x271 -> :sswitch_0
        0x272 -> :sswitch_0
        0x273 -> :sswitch_0
        0x274 -> :sswitch_0
        0x275 -> :sswitch_0
        0x276 -> :sswitch_0
        0x277 -> :sswitch_0
        0x278 -> :sswitch_0
        0x279 -> :sswitch_0
        0x27a -> :sswitch_0
        0x27b -> :sswitch_0
        0x27c -> :sswitch_0
        0x27d -> :sswitch_0
        0x27e -> :sswitch_0
        0x27f -> :sswitch_0
        0x280 -> :sswitch_0
        0x281 -> :sswitch_0
        0x282 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_0
        0x44d -> :sswitch_0
        0x44e -> :sswitch_0
        0x4b1 -> :sswitch_0
        0x515 -> :sswitch_0
        0x516 -> :sswitch_0
        0x517 -> :sswitch_0
        0x518 -> :sswitch_0
        0x519 -> :sswitch_0
        0x51a -> :sswitch_0
        0x51b -> :sswitch_0
        0x51c -> :sswitch_0
        0x51d -> :sswitch_0
        0x51e -> :sswitch_0
        0x51f -> :sswitch_0
        0x520 -> :sswitch_0
        0x521 -> :sswitch_0
        0x522 -> :sswitch_0
        0x523 -> :sswitch_0
        0x524 -> :sswitch_0
        0x525 -> :sswitch_0
        0x526 -> :sswitch_0
        0x527 -> :sswitch_0
        0x528 -> :sswitch_0
        0x529 -> :sswitch_0
        0x52a -> :sswitch_0
        0x52b -> :sswitch_0
        0x52c -> :sswitch_0
        0x52d -> :sswitch_0
        0x52e -> :sswitch_0
        0x52f -> :sswitch_0
        0x530 -> :sswitch_0
        0x531 -> :sswitch_0
        0x532 -> :sswitch_0
        0x533 -> :sswitch_0
        0x534 -> :sswitch_0
        0x535 -> :sswitch_0
        0x536 -> :sswitch_0
        0x537 -> :sswitch_0
        0x538 -> :sswitch_0
        0x539 -> :sswitch_0
        0x53a -> :sswitch_0
        0x53b -> :sswitch_0
        0x53c -> :sswitch_0
        0x53d -> :sswitch_0
        0x53e -> :sswitch_0
        0x53f -> :sswitch_0
        0x540 -> :sswitch_0
        0x541 -> :sswitch_0
        0x542 -> :sswitch_0
        0x543 -> :sswitch_0
        0x544 -> :sswitch_0
        0x545 -> :sswitch_0
        0x546 -> :sswitch_0
        0x547 -> :sswitch_0
        0x548 -> :sswitch_0
        0x549 -> :sswitch_0
        0x54a -> :sswitch_0
        0x579 -> :sswitch_0
        0x57a -> :sswitch_0
        0x57b -> :sswitch_0
        0x57c -> :sswitch_0
        0x57d -> :sswitch_0
        0x57e -> :sswitch_0
        0x57f -> :sswitch_0
        0x580 -> :sswitch_0
        0x581 -> :sswitch_0
        0x582 -> :sswitch_0
        0x583 -> :sswitch_0
        0x584 -> :sswitch_0
        0x585 -> :sswitch_0
        0x586 -> :sswitch_0
        0x587 -> :sswitch_0
        0x588 -> :sswitch_0
        0x589 -> :sswitch_0
        0x58a -> :sswitch_0
        0x58b -> :sswitch_0
        0x58c -> :sswitch_0
        0x58d -> :sswitch_0
        0x58e -> :sswitch_0
        0x58f -> :sswitch_0
        0x590 -> :sswitch_0
        0x591 -> :sswitch_0
        0x592 -> :sswitch_0
        0x593 -> :sswitch_0
        0x641 -> :sswitch_0
        0x642 -> :sswitch_0
        0x643 -> :sswitch_0
        0x644 -> :sswitch_0
        0x645 -> :sswitch_0
        0x646 -> :sswitch_0
        0x647 -> :sswitch_0
        0x648 -> :sswitch_0
        0x649 -> :sswitch_0
        0x64a -> :sswitch_0
        0x64b -> :sswitch_0
        0x64c -> :sswitch_0
        0x64d -> :sswitch_0
        0x64e -> :sswitch_0
        0x64f -> :sswitch_0
        0x650 -> :sswitch_0
        0x651 -> :sswitch_0
        0x652 -> :sswitch_0
        0x653 -> :sswitch_0
        0x654 -> :sswitch_0
        0x655 -> :sswitch_0
        0x656 -> :sswitch_0
        0x657 -> :sswitch_0
        0x658 -> :sswitch_0
        0x659 -> :sswitch_0
        0x65a -> :sswitch_0
        0x65b -> :sswitch_0
        0x65c -> :sswitch_0
        0x65d -> :sswitch_0
        0x65e -> :sswitch_0
        0x65f -> :sswitch_0
        0x660 -> :sswitch_0
        0x661 -> :sswitch_0
        0x662 -> :sswitch_0
        0x663 -> :sswitch_0
        0x664 -> :sswitch_0
        0x665 -> :sswitch_0
        0x666 -> :sswitch_0
        0x667 -> :sswitch_0
        0x668 -> :sswitch_0
        0x669 -> :sswitch_0
        0x66a -> :sswitch_0
        0x66b -> :sswitch_0
        0x66c -> :sswitch_0
        0x66d -> :sswitch_0
        0x66e -> :sswitch_0
        0x66f -> :sswitch_0
        0x670 -> :sswitch_0
        0x671 -> :sswitch_0
        0x672 -> :sswitch_0
        0x673 -> :sswitch_0
        0x674 -> :sswitch_0
        0x675 -> :sswitch_0
        0x676 -> :sswitch_0
        0x677 -> :sswitch_0
        0x678 -> :sswitch_0
        0x679 -> :sswitch_0
        0x67a -> :sswitch_0
        0x67b -> :sswitch_0
        0x67c -> :sswitch_0
        0x709 -> :sswitch_0
        0x70a -> :sswitch_0
        0x70b -> :sswitch_0
        0x70c -> :sswitch_0
        0x70d -> :sswitch_0
        0x70e -> :sswitch_0
        0x70f -> :sswitch_0
        0x710 -> :sswitch_0
        0x711 -> :sswitch_0
        0x712 -> :sswitch_0
        0x713 -> :sswitch_0
        0x714 -> :sswitch_0
        0x715 -> :sswitch_0
        0x716 -> :sswitch_0
        0x717 -> :sswitch_0
        0x718 -> :sswitch_0
        0x719 -> :sswitch_0
        0x76d -> :sswitch_0
        0x76e -> :sswitch_0
        0x76f -> :sswitch_0
        0x770 -> :sswitch_0
        0x771 -> :sswitch_0
        0x772 -> :sswitch_0
        0x773 -> :sswitch_0
        0x774 -> :sswitch_0
        0x775 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x835 -> :sswitch_0
        0x836 -> :sswitch_0
        0x837 -> :sswitch_0
        0x838 -> :sswitch_0
        0x839 -> :sswitch_0
        0x83a -> :sswitch_0
        0x83b -> :sswitch_0
        0x83c -> :sswitch_0
        0x83d -> :sswitch_0
        0x83e -> :sswitch_0
        0x83f -> :sswitch_0
        0x840 -> :sswitch_0
        0x841 -> :sswitch_0
        0x842 -> :sswitch_0
        0x843 -> :sswitch_0
        0x844 -> :sswitch_0
        0x845 -> :sswitch_0
        0x846 -> :sswitch_0
        0x847 -> :sswitch_0
        0x848 -> :sswitch_0
        0x849 -> :sswitch_0
        0x84a -> :sswitch_0
        0x84b -> :sswitch_0
        0x84c -> :sswitch_0
        0x899 -> :sswitch_0
        0x89a -> :sswitch_0
        0x89b -> :sswitch_0
        0x89c -> :sswitch_0
        0x89d -> :sswitch_0
        0x89e -> :sswitch_0
        0x89f -> :sswitch_0
        0x8a0 -> :sswitch_0
        0x8a1 -> :sswitch_0
        0x8a2 -> :sswitch_0
        0x8a3 -> :sswitch_0
        0x8a4 -> :sswitch_0
        0x8a5 -> :sswitch_0
        0x8a6 -> :sswitch_0
        0x8a7 -> :sswitch_0
        0x8fd -> :sswitch_0
        0x8fe -> :sswitch_0
        0x8ff -> :sswitch_0
        0x900 -> :sswitch_0
        0x961 -> :sswitch_0
        0x962 -> :sswitch_0
        0x963 -> :sswitch_0
        0x9c5 -> :sswitch_0
        0x9c6 -> :sswitch_0
        0x9c7 -> :sswitch_0
        0x9c8 -> :sswitch_0
        0x9c9 -> :sswitch_0
        0x9ca -> :sswitch_0
        0x9cb -> :sswitch_0
        0x9cc -> :sswitch_0
        0x9cd -> :sswitch_0
        0x9ce -> :sswitch_0
        0x9cf -> :sswitch_0
        0x9d0 -> :sswitch_0
        0x9d1 -> :sswitch_0
        0x9d2 -> :sswitch_0
        0x9d3 -> :sswitch_0
        0x9d4 -> :sswitch_0
        0x9d5 -> :sswitch_0
        0x9d6 -> :sswitch_0
        0x9d7 -> :sswitch_0
        0x9d8 -> :sswitch_0
        0xa29 -> :sswitch_0
        0xa2a -> :sswitch_0
        0xa8d -> :sswitch_0
        0xa8e -> :sswitch_0
        0xa8f -> :sswitch_0
        0xa90 -> :sswitch_0
        0xa91 -> :sswitch_0
        0xa92 -> :sswitch_0
        0xa93 -> :sswitch_0
        0xaf1 -> :sswitch_0
        0xaf2 -> :sswitch_0
        0xaf3 -> :sswitch_0
        0xaf4 -> :sswitch_0
        0xaf5 -> :sswitch_0
        0xaf6 -> :sswitch_0
        0xaf7 -> :sswitch_0
        0xaf8 -> :sswitch_0
        0xaf9 -> :sswitch_0
        0xafa -> :sswitch_0
        0xafb -> :sswitch_0
        0xafc -> :sswitch_0
        0xafd -> :sswitch_0
        0xafe -> :sswitch_0
        0xaff -> :sswitch_0
        0xb00 -> :sswitch_0
        0xb01 -> :sswitch_0
        0xb02 -> :sswitch_0
        0xb03 -> :sswitch_0
        0xb04 -> :sswitch_0
        0xb05 -> :sswitch_0
        0xb06 -> :sswitch_0
        0xb07 -> :sswitch_0
        0xb08 -> :sswitch_0
        0xb09 -> :sswitch_0
        0xb0a -> :sswitch_0
        0xb55 -> :sswitch_0
        0xb56 -> :sswitch_0
        0xb57 -> :sswitch_0
        0xb58 -> :sswitch_0
        0xb59 -> :sswitch_0
        0xb5a -> :sswitch_0
        0xb5b -> :sswitch_0
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbc -> :sswitch_0
        0xbbd -> :sswitch_0
        0xc1d -> :sswitch_0
        0xc1e -> :sswitch_0
        0xc1f -> :sswitch_0
        0xc20 -> :sswitch_0
        0xc21 -> :sswitch_0
        0xc22 -> :sswitch_0
        0xc23 -> :sswitch_0
        0xc24 -> :sswitch_0
        0xc25 -> :sswitch_0
        0xc26 -> :sswitch_0
        0xce4 -> :sswitch_0
        0xce5 -> :sswitch_0
        0xd49 -> :sswitch_0
        0xd4a -> :sswitch_0
        0xd4b -> :sswitch_0
        0xd4c -> :sswitch_0
        0xd4d -> :sswitch_0
        0xd4e -> :sswitch_0
        0xd4f -> :sswitch_0
        0xd50 -> :sswitch_0
        0xd51 -> :sswitch_0
        0xd52 -> :sswitch_0
        0xd53 -> :sswitch_0
        0xd54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x2bd
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

    :pswitch_data_6
    .packed-switch 0x321
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x385
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzbmq()[Lcom/google/android/gms/internal/zzdoj;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdoj;->zzlym:[Lcom/google/android/gms/internal/zzdoj;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzflq;->zzpvt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzdoj;->zzlym:[Lcom/google/android/gms/internal/zzdoj;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzdoj;

    sput-object v1, Lcom/google/android/gms/internal/zzdoj;->zzlym:[Lcom/google/android/gms/internal/zzdoj;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzdoj;->zzlym:[Lcom/google/android/gms/internal/zzdoj;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdoj;->zzaf(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzdoj;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdoj;->zzlyn:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzflk;->zzad(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdoj;->zzjuj:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzflk;->zzf(IJ)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-void
.end method

.method protected final zzq()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzflm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdoj;->zzlyn:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdoj;->zzjuj:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzflk;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
