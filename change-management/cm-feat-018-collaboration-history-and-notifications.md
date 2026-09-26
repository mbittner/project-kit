# CM-FEAT-018 | Change Management Brief: Collaboration History and Notifications

*[Lire ce document en français](cm-feat-018-collaboration-history-and-notifications-fr.md)*

> **Document status:** Illustrative working draft  
> **Document version:** Not baselined  
> **Source feature canvas:** [FEAT-018 Collaboration History and Notifications](../features/feat-018-collaboration-history-and-notifications.md)  
> **Parent change brief:** [CM-EPIC-005 External Broker Collaboration](cm-epic-005-external-broker-collaboration.md)

## 1. Change Summary
Brokers, sponsors, and operations users move from collaboration history scattered across email threads with no proactive alerts to a maintained activity history with event notifications, preference handling, and read/unread status.

## 2. Who Is Affected
| Persona | How they use this today | How they will use it after | Impact level |
|---|---|---|---|
| Broker representative | Searches old email threads to reconstruct history | Reviews a consolidated activity history in the system | Medium |
| Plan sponsor administrator | Misses updates buried in email | Receives event notifications for relevant changes | Medium |
| New business operations user | Manually notifies parties of changes | Relies on automatic event notifications | Medium |

## 3. Before / After Journey
| Step | Current state (before) | Future state (after) |
|---|---|---|
| Access case | Party searches email threads for prior context | Party opens the case and reviews the activity history |
| Provide information | N/A (history/notification step) | N/A |
| Resolve issues | Updates missed due to email overload | Event notifications alert relevant parties automatically |
| Confirm and submit | No record of who has seen an update | Read/unread status tracks engagement with updates |
| Check status | Reconstructing "who knew what, when" is difficult | Activity history provides a clear, chronological record |

## 4. What's Changing in Practice
- **New steps introduced:** Activity history, event notifications, preference handling, read/unread status.
- **Steps removed/automated:** Manually notifying parties and reconstructing history from email threads.
- **New rules users must follow:** Relevant events must generate a notification according to user preferences.
- **New information users must provide/review:** Notification preferences and a chronological activity history per case.

## 5. Training and Job Aids Needed
- Quick-reference guide: Yes — how to set notification preferences and read the activity history.
- Walkthrough/short video: Optional.
- In-app guidance: Read/unread indicators and notification settings (see Section 10, UX/Interface Considerations).
- FAQ: Yes — how to adjust notification frequency/channel.

## 6. Local Champions / SME Support
- Named champions: to confirm among broker relationship managers.
- Office hours during go-live: to confirm.
- Escalation path: new business operations team for missed/incorrect notifications.

## 7. Adoption Measures
| Measure | Definition | Baseline | Target | Owner |
|---|---|---|---|---|
| Notification engagement | % of notifications marked as read within a defined window | To confirm | To approve | Product Manager |
| Exceptions | % of notification delivery failures | To confirm | To approve | Operations |
| Handling time | Time from event to user acknowledgment | To confirm | To approve | Operations |
| User experience | Satisfaction with notification relevance/frequency | To confirm | To approve | Product / UX |

## 8. Risks and Mitigations
| Risk | Mitigation |
|---|---|
| Notification volume overwhelms users (alert fatigue) | Allow preference tuning and default to sensible thresholds |
| Users still rely on email for historical context out of habit | Reinforce the activity history as the authoritative record |
| Notification delivery failures reduce trust in the feature | Monitor delivery rates closely during initial rollout |

## 9. Readiness Checklist
- [ ] Feature approved and build/test complete
- [ ] Before/after journey validated with brokers, sponsors, and operations users
- [ ] Training materials and job aids published
- [ ] Champions/support briefed and available at go-live
- [ ] Adoption measures instrumented and baseline captured
- [ ] Feature Readiness Checklist (source feature canvas, Section 16) satisfied
