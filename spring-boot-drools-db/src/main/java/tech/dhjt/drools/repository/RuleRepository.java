package tech.dhjt.drools.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import tech.dhjt.drools.model.Rule;

public interface RuleRepository extends JpaRepository<Rule, Long> {
    Rule findByRuleKey(String ruleKey);
}