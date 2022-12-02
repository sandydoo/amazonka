{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Budgets.Types.CostTypes
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Budgets.Types.CostTypes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The types of cost that are included in a @COST@ budget, such as tax and
-- subscriptions.
--
-- @USAGE@, @RI_UTILIZATION@, @RI_COVERAGE@, @SAVINGS_PLANS_UTILIZATION@,
-- and @SAVINGS_PLANS_COVERAGE@ budgets don\'t have @CostTypes@.
--
-- /See:/ 'newCostTypes' smart constructor.
data CostTypes = CostTypes'
  { -- | Specifies whether a budget includes support subscription fees.
    --
    -- The default value is @true@.
    includeSupport :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes discounts.
    --
    -- The default value is @true@.
    includeDiscount :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget uses the amortized rate.
    --
    -- The default value is @false@.
    useAmortized :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes taxes.
    --
    -- The default value is @true@.
    includeTax :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes non-RI subscription costs.
    --
    -- The default value is @true@.
    includeOtherSubscription :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes refunds.
    --
    -- The default value is @true@.
    includeRefund :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes subscriptions.
    --
    -- The default value is @true@.
    includeSubscription :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget uses a blended rate.
    --
    -- The default value is @false@.
    useBlended :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes recurring fees such as monthly RI
    -- fees.
    --
    -- The default value is @true@.
    includeRecurring :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes upfront RI costs.
    --
    -- The default value is @true@.
    includeUpfront :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether a budget includes credits.
    --
    -- The default value is @true@.
    includeCredit :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CostTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeSupport', 'costTypes_includeSupport' - Specifies whether a budget includes support subscription fees.
--
-- The default value is @true@.
--
-- 'includeDiscount', 'costTypes_includeDiscount' - Specifies whether a budget includes discounts.
--
-- The default value is @true@.
--
-- 'useAmortized', 'costTypes_useAmortized' - Specifies whether a budget uses the amortized rate.
--
-- The default value is @false@.
--
-- 'includeTax', 'costTypes_includeTax' - Specifies whether a budget includes taxes.
--
-- The default value is @true@.
--
-- 'includeOtherSubscription', 'costTypes_includeOtherSubscription' - Specifies whether a budget includes non-RI subscription costs.
--
-- The default value is @true@.
--
-- 'includeRefund', 'costTypes_includeRefund' - Specifies whether a budget includes refunds.
--
-- The default value is @true@.
--
-- 'includeSubscription', 'costTypes_includeSubscription' - Specifies whether a budget includes subscriptions.
--
-- The default value is @true@.
--
-- 'useBlended', 'costTypes_useBlended' - Specifies whether a budget uses a blended rate.
--
-- The default value is @false@.
--
-- 'includeRecurring', 'costTypes_includeRecurring' - Specifies whether a budget includes recurring fees such as monthly RI
-- fees.
--
-- The default value is @true@.
--
-- 'includeUpfront', 'costTypes_includeUpfront' - Specifies whether a budget includes upfront RI costs.
--
-- The default value is @true@.
--
-- 'includeCredit', 'costTypes_includeCredit' - Specifies whether a budget includes credits.
--
-- The default value is @true@.
newCostTypes ::
  CostTypes
newCostTypes =
  CostTypes'
    { includeSupport = Prelude.Nothing,
      includeDiscount = Prelude.Nothing,
      useAmortized = Prelude.Nothing,
      includeTax = Prelude.Nothing,
      includeOtherSubscription = Prelude.Nothing,
      includeRefund = Prelude.Nothing,
      includeSubscription = Prelude.Nothing,
      useBlended = Prelude.Nothing,
      includeRecurring = Prelude.Nothing,
      includeUpfront = Prelude.Nothing,
      includeCredit = Prelude.Nothing
    }

-- | Specifies whether a budget includes support subscription fees.
--
-- The default value is @true@.
costTypes_includeSupport :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeSupport = Lens.lens (\CostTypes' {includeSupport} -> includeSupport) (\s@CostTypes' {} a -> s {includeSupport = a} :: CostTypes)

-- | Specifies whether a budget includes discounts.
--
-- The default value is @true@.
costTypes_includeDiscount :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeDiscount = Lens.lens (\CostTypes' {includeDiscount} -> includeDiscount) (\s@CostTypes' {} a -> s {includeDiscount = a} :: CostTypes)

-- | Specifies whether a budget uses the amortized rate.
--
-- The default value is @false@.
costTypes_useAmortized :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_useAmortized = Lens.lens (\CostTypes' {useAmortized} -> useAmortized) (\s@CostTypes' {} a -> s {useAmortized = a} :: CostTypes)

-- | Specifies whether a budget includes taxes.
--
-- The default value is @true@.
costTypes_includeTax :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeTax = Lens.lens (\CostTypes' {includeTax} -> includeTax) (\s@CostTypes' {} a -> s {includeTax = a} :: CostTypes)

-- | Specifies whether a budget includes non-RI subscription costs.
--
-- The default value is @true@.
costTypes_includeOtherSubscription :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeOtherSubscription = Lens.lens (\CostTypes' {includeOtherSubscription} -> includeOtherSubscription) (\s@CostTypes' {} a -> s {includeOtherSubscription = a} :: CostTypes)

-- | Specifies whether a budget includes refunds.
--
-- The default value is @true@.
costTypes_includeRefund :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeRefund = Lens.lens (\CostTypes' {includeRefund} -> includeRefund) (\s@CostTypes' {} a -> s {includeRefund = a} :: CostTypes)

-- | Specifies whether a budget includes subscriptions.
--
-- The default value is @true@.
costTypes_includeSubscription :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeSubscription = Lens.lens (\CostTypes' {includeSubscription} -> includeSubscription) (\s@CostTypes' {} a -> s {includeSubscription = a} :: CostTypes)

-- | Specifies whether a budget uses a blended rate.
--
-- The default value is @false@.
costTypes_useBlended :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_useBlended = Lens.lens (\CostTypes' {useBlended} -> useBlended) (\s@CostTypes' {} a -> s {useBlended = a} :: CostTypes)

-- | Specifies whether a budget includes recurring fees such as monthly RI
-- fees.
--
-- The default value is @true@.
costTypes_includeRecurring :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeRecurring = Lens.lens (\CostTypes' {includeRecurring} -> includeRecurring) (\s@CostTypes' {} a -> s {includeRecurring = a} :: CostTypes)

-- | Specifies whether a budget includes upfront RI costs.
--
-- The default value is @true@.
costTypes_includeUpfront :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeUpfront = Lens.lens (\CostTypes' {includeUpfront} -> includeUpfront) (\s@CostTypes' {} a -> s {includeUpfront = a} :: CostTypes)

-- | Specifies whether a budget includes credits.
--
-- The default value is @true@.
costTypes_includeCredit :: Lens.Lens' CostTypes (Prelude.Maybe Prelude.Bool)
costTypes_includeCredit = Lens.lens (\CostTypes' {includeCredit} -> includeCredit) (\s@CostTypes' {} a -> s {includeCredit = a} :: CostTypes)

instance Data.FromJSON CostTypes where
  parseJSON =
    Data.withObject
      "CostTypes"
      ( \x ->
          CostTypes'
            Prelude.<$> (x Data..:? "IncludeSupport")
            Prelude.<*> (x Data..:? "IncludeDiscount")
            Prelude.<*> (x Data..:? "UseAmortized")
            Prelude.<*> (x Data..:? "IncludeTax")
            Prelude.<*> (x Data..:? "IncludeOtherSubscription")
            Prelude.<*> (x Data..:? "IncludeRefund")
            Prelude.<*> (x Data..:? "IncludeSubscription")
            Prelude.<*> (x Data..:? "UseBlended")
            Prelude.<*> (x Data..:? "IncludeRecurring")
            Prelude.<*> (x Data..:? "IncludeUpfront")
            Prelude.<*> (x Data..:? "IncludeCredit")
      )

instance Prelude.Hashable CostTypes where
  hashWithSalt _salt CostTypes' {..} =
    _salt `Prelude.hashWithSalt` includeSupport
      `Prelude.hashWithSalt` includeDiscount
      `Prelude.hashWithSalt` useAmortized
      `Prelude.hashWithSalt` includeTax
      `Prelude.hashWithSalt` includeOtherSubscription
      `Prelude.hashWithSalt` includeRefund
      `Prelude.hashWithSalt` includeSubscription
      `Prelude.hashWithSalt` useBlended
      `Prelude.hashWithSalt` includeRecurring
      `Prelude.hashWithSalt` includeUpfront
      `Prelude.hashWithSalt` includeCredit

instance Prelude.NFData CostTypes where
  rnf CostTypes' {..} =
    Prelude.rnf includeSupport
      `Prelude.seq` Prelude.rnf includeDiscount
      `Prelude.seq` Prelude.rnf useAmortized
      `Prelude.seq` Prelude.rnf includeTax
      `Prelude.seq` Prelude.rnf includeOtherSubscription
      `Prelude.seq` Prelude.rnf includeRefund
      `Prelude.seq` Prelude.rnf includeSubscription
      `Prelude.seq` Prelude.rnf useBlended
      `Prelude.seq` Prelude.rnf includeRecurring
      `Prelude.seq` Prelude.rnf includeUpfront
      `Prelude.seq` Prelude.rnf includeCredit

instance Data.ToJSON CostTypes where
  toJSON CostTypes' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("IncludeSupport" Data..=)
              Prelude.<$> includeSupport,
            ("IncludeDiscount" Data..=)
              Prelude.<$> includeDiscount,
            ("UseAmortized" Data..=) Prelude.<$> useAmortized,
            ("IncludeTax" Data..=) Prelude.<$> includeTax,
            ("IncludeOtherSubscription" Data..=)
              Prelude.<$> includeOtherSubscription,
            ("IncludeRefund" Data..=) Prelude.<$> includeRefund,
            ("IncludeSubscription" Data..=)
              Prelude.<$> includeSubscription,
            ("UseBlended" Data..=) Prelude.<$> useBlended,
            ("IncludeRecurring" Data..=)
              Prelude.<$> includeRecurring,
            ("IncludeUpfront" Data..=)
              Prelude.<$> includeUpfront,
            ("IncludeCredit" Data..=) Prelude.<$> includeCredit
          ]
      )
